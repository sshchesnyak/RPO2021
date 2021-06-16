import React, {Component} from "react";
import BackendService from "../services/BackendService";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import{faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";
import {alertActions} from "../utils/Rdx";
import{connect} from "react-redux";
import {Form} from "react-bootstrap";

class MuseumComponent extends Component {

    constructor(props) {
        super(props);

        this.state = {
            id: this.props.match.params.id,
            name: '',
            location: '',
            hidden: false,
        }

        this.onSubmit = this.onSubmit.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange({target}) {
        this.setState({[target.name]: target.value});
        this.setState({[target.location]: target.value});
    };

    onSubmit(event){
        event.preventDefault();
        event.stopPropagation();
        let err = null;
        console.log(this.state.location)
        if (!this.state.name){
            err = "Please input the name of the museum"
        }
        if (!this.state.location){
            err = "Please input the museum location"
        }
        if (err){
            this.props.dispatch(alertActions.error(err))
        }
        let museum = {id: this.state.id, name: this.state.name, location: this.state.location}
        if (parseInt(museum.id)===-1) {
            BackendService.createMuseum(museum)
                .then(()=>this.props.history.push('/museums'))
                .catch(()=>{})
        }
        else {
            BackendService.updateMuseum(museum)
                .then(()=>this.props.history.push('/museums'))
                .catch(()=>{})
        }
    }

    componentDidMount() {
        if (parseInt(this.state.id)!==-1){
            BackendService.retrieveMuseum(this.state.id)
                .then((resp)=>{
                    this.setState({
                        name: resp.data.name,
                        location: resp.data.location
                    })
                })
                .catch(()=>this.setState({hidden: true}));
        }
    }

    render(){
        if (this.state.hidden)
            return null;
        return (
            <div className="m-4">
                <div className="row my-2 mr-0">
                    <h3>Museums</h3>
                    <button
                        className="btn btn-outline-secondary ml-auto"
                        onClick={()=>this.props.history.push('/museums')}><FontAwesomeIcon
                        icon={faChevronLeft}/>{' '}Back</button>
                </div>
                <Form onSubmit={this.onSubmit}>
                    <Form.Group>
                        <Form.Label>Museum name</Form.Label>
                        <Form.Control
                            type="text"
                            placeholder="Museum name"
                            onChange={this.handleChange}
                            value={this.state.name}
                            name="name"/>
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Museum location</Form.Label>
                        <Form.Control
                            type="text"
                            placeholder="Museum location"
                            onChange={this.handleChange}
                            value={this.state.location}
                            name="location"/>
                    </Form.Group>
                    <button
                        className="btn btn-outline-secondary"
                        type="submit"><FontAwesomeIcon
                        icon={faSave}/>{' '}Save
                    </button>
                </Form>
            </div>
        )
    }
}

export default connect()(MuseumComponent);