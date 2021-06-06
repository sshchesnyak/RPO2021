

class Utils {

    saveUser(user){
        localStorage.setItem('user',JSON.stringify(user));
    }

    removeUser(){
        localStorage.removeItem('user');
    }

    getToken(){
        let user = JSON.parse(localStorage.getItem('user'));
        if (user!=null)
            return "Bearer " + user.user_data.token;
        else
            return ''
    }

    getUserName(){
        let user = JSON.parse(localStorage.getItem('user'));
        console.log("user",user);
        if (user!=null)
            return user.user_data.login;
        else
            return false
    }
}

export default new Utils();