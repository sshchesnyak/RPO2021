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
import UserListComponent from "./components/UserListComponent";
import MuseumComponent from "./components/MuseumComponent";
import MuseumListComponent from "./components/MuseumListComponent";
import PaintingListComponent from "./components/PaintingListComponent";
import ArtistListComponent from "./components/ArtistListComponent";
import ArtistComponent from "./components/ArtistComponent";
import PaintingComponent from "./components/PaintingComponent";
import MyAccountComponent from "./components/MyAccountComponent";
import UserComponent from "./components/UserComponent";

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
                          <AuthRoute path="/artists" exact component={ArtistListComponent}/>
                          <AuthRoute path="/artists/:id" exact component={ArtistComponent}/>
                          <AuthRoute path="/paintings" exact component={PaintingListComponent}/>
                          <AuthRoute path="/paintings/:id" exact component={PaintingComponent}/>
                          <AuthRoute path="/museums" exact component={MuseumListComponent}/>
                          <AuthRoute path="/museums/:id" component={MuseumComponent}/>
                          <AuthRoute path="/users" exact component={UserListComponent}/>
                          <AuthRoute path="/users/:id" exact component={UserComponent}/>
                          <AuthRoute path="/myaccount" exact component={MyAccountComponent}/>
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
