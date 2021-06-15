import React, {useState} from 'react';
import './App.css';
import {Switch,Route,BrowserRouter,Redirect} from "react-router-dom";
import NavigationBar from "./components/NavigationBar";
import Sidebar from "./components/Sidebar"
import Home from "./components/Home";
import Login from "./components/Login"
import Utils from "./utils/Utils";
import {connect} from "react-redux";
import CountryListComponent from "./components/CountryListComponent";
import CountryComponent from "./components/CountryComponent";

const AuthRoute = props => {
    let user = Utils.getUser();
    if (!user) return <Redirect to="/login"/>
    return <Route {...props} />
}

function App(props){
    const [exp, setExpanded] = useState(false)

  return (
      <div className="App">
          <BrowserRouter>
              <NavigationBar toggleSideBar={()=>setExpanded(!exp)}/>
              <div className="wrapper">
                  <Sidebar expanded={exp}/>
                  <div className="container-fluid">
                      {props.error_message && <div className="alert alert-danger m-1">{props.error_message}</div>}
                      <Switch>
                          <AuthRoute path="/home" component={Home}/>
                          <AuthRoute path="/countries" exact component={CountryListComponent}/>
                          <AuthRoute path="/countries/:id" exact component={CountryComponent}/>
                          <Route path="/login" component={Login}/>
                      </Switch>
                  </div>
              </div>
          </BrowserRouter>
      </div>
  );
}

function mapStateToProps(state){
    const {msg}=state.alert;
    return {error_message: msg};
}

export default connect(mapStateToProps)(App);
