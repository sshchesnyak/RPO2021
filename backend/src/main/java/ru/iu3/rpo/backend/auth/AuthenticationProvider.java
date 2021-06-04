package ru.iu3.rpo.backend.auth;

import org.apache.tomcat.jni.Local;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.www.NonceExpiredException;
import org.springframework.stereotype.Component;
import org.springframework.security.core.userdetails.User;
import ru.iu3.rpo.backend.repositories.UserRepository;

import java.time.LocalDateTime;
import java.util.Optional;

@Component
public class AuthenticationProvider extends AbstractUserDetailsAuthenticationProvider {

    @Autowired
    UserRepository userRepository;

    @Value("${private.session-timeout}")
    private int sessionTimeout;

    @Override
    protected void additionalAuthenticationChecks(UserDetails userDetails, UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken) throws AuthenticationException {

    }

    @Override
    protected UserDetails retrieveUser(String username, UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken) throws AuthenticationException{
        Object token = usernamePasswordAuthenticationToken.getCredentials();
        Optional<ru.iu3.rpo.backend.models.User> uu = userRepository.findByToken(String.valueOf(token));
        if (!uu.isPresent()) throw new UsernameNotFoundException("user with that token not found");
        ru.iu3.rpo.backend.models.User u = uu.get();

        boolean timeout = true;
        LocalDateTime dt = LocalDateTime.now();
        if (u.activity!=null)
        {
            LocalDateTime nt = u.activity.plusMinutes(sessionTimeout);
            if (dt.isBefore(nt)){
                timeout=false;
            }
        }
        if (timeout){
            u.token=null;
            userRepository.save(u);
            throw new NonceExpiredException("user session expired");
        }
        else
        {
            u.activity=dt;
            userRepository.save(u);
        }

        UserDetails user = new User(u.login,u.password,true,true,true,true, AuthorityUtils.createAuthorityList("USER"));
        return user;
    }
}
