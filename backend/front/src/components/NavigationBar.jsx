import React from "react";
import {Navbar, Nav} from "react-bootstrap";
import {withRouter} from "react-router-dom"
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faHome} from '@fortawesome/free-solid-svg-icons'

class NavigationBar extends React.Component {

    constructor(props) {
        super(props);
        this.goHome = this.goHome.bind(this)
    }

    goHome(){
        this.props.history.push("/home");
        window.location.reload();
    }

    render() {
        return(
            <Navbar bg="Light" expand="lg">
                <Navbar.Brand><FontAwesomeIcon icon={faHome}/>{' '}MyRPOProject</Navbar.Brand>
                <Navbar.Toggle aria-controls="basic-navbar-nav"/>
                <Navbar.Collapse id="basic-navbar-nav">
                    <Nav className="mr-auto">
                        <Nav.Link href="/home">Home</Nav.Link>
                        <Nav.Link onClick={this.goHome}>No place like home</Nav.Link>
                        <Nav.Link onClick={()=>{this.props.history.push("/home"); window.location.reload();}}>Finally home</Nav.Link>
                    </Nav>
                </Navbar.Collapse>
            </Navbar>
        );
    }
}

export default withRouter(NavigationBar);