import React, { Component } from 'react';
import {connect} from "react-redux"
import {Form} from "react-bootstrap"
import BackendService from "../services/BackendService";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";
import {alertActions} from "../utils/Rdx";
import Alert from "react-bootstrap/Alert";

class ArtistComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            id: this.props.match.params.id,
            name: '',
            century: '',
            country: '',
            countryobjects: [],
            countries: [],
            hidden: false,
            alertShow: false,
            alertMessage: '',
        }

        this.onSubmit = this.onSubmit.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange({target}) {
        console.log(target);
        this.setState({[target.name]: target.value});
        this.setState({[target.century]: target.value});
        this.setState({[target.country]: target.value});
    };

    async onSubmit(event) {
        event.preventDefault();
        event.stopPropagation();
        let err = null;
        if (!this.state.name) {
            err = "Please input the name of the painter"
        }
        if (!this.state.century) {
            err = "Please input the active timeframe (century)"
        }
        if (!this.state.country) {
            err = "Please input the country of origin"
        }
        if (err) {
            this.props.dispatch(alertActions.error(err))
            this.setState({alertShow: true, alertMessage: err});
            return ;
        }
        let poscountry = 0;
        if (isNaN(this.state.country)){
            poscountry=parseInt(this.state.countries.indexOf(this.state.country).toString(),10);
            this.state.country=this.state.countryobjects[poscountry]}
        let thiscountry = await BackendService.retrieveCountry(this.state.country);
        let artist = {id: this.state.id, name: this.state.name, country: thiscountry.data, century: this.state.century};
        if (parseInt(artist.id) === -1) {
            BackendService.createArtist(artist)
                .then((res) => {
                    if (res.data.error) {
                        throw new Error(res.data.error);
                    }
                    this.props.history.push('/artists')
                })
                .catch((e) => {
                    this.props.dispatch(alertActions.error(e));
                    this.setState({alertShow: true, alertMessage: 'An artist entry just like this already exists!'});
                })
        } else {
            BackendService.updateArtist(artist)
                .then(() => this.props.history.push('/artists'))
                .catch(() => {
                })
        }
    }

    componentDidMount() {
        if(parseInt(this.state.id) !== -1) {
            BackendService.retrieveArtist(this.state.id)
                .then((resp) => {
                    this.setState({
                        name: resp.data.name,
                        century: resp.data.century,
                        country: resp.data.country.name,
                    });
                })
                .catch(() => this.setState({hidden: true}));
            BackendService.retrieveAllTheCountryObjects()
                .then(async(resp) => {
                    await this.setState({
                        countryobjects: resp,
                    });
                })
                .catch(() => this.setState({hidden: true}));
            BackendService.retrieveAllTheCountries()
                .then(async(resp) => {
                    await this.setState({
                        countries: resp,
                    });
                })
                .catch(() => this.setState({hidden: true}));
        }
    }

    render() {
        if (this.state.hidden)
            return null;
        let countryobjects = this.state.countryobjects;
        let countries = this.state.countries;
        let optionItems = [];
        var i;
        optionItems.push(<option label="Please choose an option" value={-1}>"Please choose an option"</option>)
        for (i=0;i<countryobjects.length;i++)
        {
            if (countries[i]===this.state.country){
                optionItems.push(<option selected="selected" label={countries[i]} value={countryobjects[i]}>{countries[i]}</option>);
            }
            else{
                optionItems.push(<option label={countries[i]} value={countryobjects[i]}>{countries[i]}</option>);
            }
        }
        return (
            <>
                {this.state.alertShow && <Alert variant={'danger'}>{this.state.alertMessage}</Alert>}
                <div className="m-4">
                    <div className="row my-2 mr-0">
                        <h3>Artist</h3>
                        <button
                            className="btn btn-outline-secondary ml-auto"
                            onClick={() => this.props.history.goBack()}><FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад
                        </button>
                    </div>
                    <Form onSubmit={this.onSubmit}>
                        <Form.Group>
                            <Form.Label>Name</Form.Label>
                            <Form.Control
                                type="text"
                                placeholder="Input artist name"
                                onChange={this.handleChange}
                                value={this.state.name}
                                name="name"
                            />
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Century</Form.Label>
                            <Form.Control
                                type="text"
                                placeholder="Input active timeframe (century)"
                                onChange={this.handleChange}
                                value={this.state.century}
                                name="century"
                                autoComplete="off"
                            />
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Country</Form.Label>
                            <p></p>
                            <select name="country" onChange={this.handleChange}>
                                {optionItems}
                            </select>
                        </Form.Group>
                        <button
                            className="btn btn-outline-secondary"
                            type="submit"><FontAwesomeIcon icon={faSave}/>{" "}Save
                        </button>
                    </Form>
                </div>
            </>
        )
    }

}

export default connect()(ArtistComponent);