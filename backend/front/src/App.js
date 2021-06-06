import React from 'react';
import './App.css';
import {Switch,Route,BrowserRouter} from "react-router-dom";
import NavigationBar from "./components/NavigationBar";
import Home from "./components/Home";
import Login from "./components/Login"


function App(){

  return (
      <div className="App">
          <BrowserRouter>
              <NavigationBar/>
              <div className="container-fluid">
                  <Switch>
                      <Route path="/home" component={Home}/>
                      <Route path="/login" component={Login}/>
                  </Switch>
              </div>
          </BrowserRouter>
      </div>
  );
}

export default App;
