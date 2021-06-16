import React, { Component } from 'react';
import {connect} from "react-redux"
import {Form} from "react-bootstrap"
import BackendService from "../services/BackendService";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";
import {alertActions} from "../utils/Rdx";
import Alert from "react-bootstrap/Alert";
import {logger} from "redux-logger/src";
class PaintingComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            id: this.props.match.params.id,
            name: '',
            artist: null,
            museum:null,
            artistobjects:[],
            artists: [],
            museumobjects:[],
            museums: [],
            hidden: false,
            alertShow: false,
            alertMessage: '',
        }

        this.onSubmit = this.onSubmit.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange({target}) {
        this.setState({[target.name]: target.value});
        this.setState({[target.artist]: target.value});
        this.setState({[target.museum]: target.value});
    };

    async onSubmit(event) {
        console.log(event, 'event');
        event.preventDefault();
        event.stopPropagation();
        let err = '';
        if (!this.state.name) {
            err += "Please input the title of the painting"
        }
        if (!this.state.artist) {
            err += "Please input the author of the painting"
        }
        if (!this.state.museum) {
            err += "Please input the painting's home museum"
        }
        if (err) {
            this.props.dispatch(alertActions.error(err))
            this.setState({alertShow: true, alertMessage: err});
            return ;
        }
        let posart = 0;
        let posmus = 0;
        if (isNaN(this.state.artist)){
            console.log("NAN 1");
            posart=parseInt(this.state.artists.indexOf(this.state.artist).toString(),10);
            this.state.artist=this.state.artistobjects[posart]}
        if (isNaN(this.state.museum)){
            console.log("NAN 2");
            posmus=parseInt(this.state.museums.indexOf(this.state.museum).toString(),10);
            this.state.museum=this.state.museumobjects[posmus]}
        console.log(this.state.artists);
        console.log(this.state.museums);
        console.log(this.state.artist);
        console.log(this.state.museum);
        let thisartist = await BackendService.retrieveArtist(this.state.artist);
        let thismuseum = await BackendService.retrieveMuseum(this.state.museum);
        let painting = {id: this.state.id, name: this.state.name, artist: thisartist.data, museum: await thismuseum.data};
        console.log(painting);
        if (parseInt(painting.id) === -1) {
            BackendService.createPainting(painting)
                .then((res) => {
                    if (res.data.error) {
                        console.log(res.data.error)
                        throw new Error(res.data.error);
                    }
                    this.props.history.push('/paintings')
                })
                .catch((e) => {
                    this.props.dispatch(alertActions.error(e));
                    this.setState({alertShow: true, alertMessage: 'A painting under that title already in existence'});
                })
        } else {
            BackendService.updatePainting(painting)
                .then(() => this.props.history.push('/paintings'))
                .catch(() => {
                })
        }
    }

    componentDidMount() {
        if (parseInt(this.state.id) !== -1) {
            BackendService.retrievePainting(this.state.id)
                .then(async (resp) => {
                    const info = await BackendService.retrieveMuseumsAndArtist(resp.data.artist.id, resp.data.museum.id);
                    console.log(info, 'info');
                    this.setState({
                        name: resp.data.name,
                        artist: info[0],
                        museum: info[1],
                    });
                })
                .catch(() => this.setState({hidden: true}));
        }
        BackendService.retrieveAllTheArtistObjects()
            .then(async(resp) => {
                await this.setState({
                    artistobjects: resp,
                });
            })
            .catch(() => this.setState({hidden: true}));
        BackendService.retrieveAllTheArtists()
            .then(async(resp) => {
                await console.log(resp);
                await this.setState({
                    artists: resp,
                });
            })
            .catch(() => this.setState({hidden: true}));
        BackendService.retrieveAllTheMuseumObjects()
            .then(async (resp) => {
                await this.setState({
                    museumobjects: resp,
                });
            })
            .catch(() => this.setState({hidden: true}));
        BackendService.retrieveAllTheMuseums()
            .then(async(resp) => {
                await console.log(resp);
                await this.setState({
                    museums: resp,
                });
            })
            .catch(() => this.setState({hidden: true}));
    }

    render() {
        if (this.state.hidden)
            return null;
        let artistobjects = this.state.artistobjects;
        let artists = this.state.artists;
        let museumobjects = this.state.museumobjects;
        let museums = this.state.museums;
        let optionItems = [];
        let alsoOptionItems=[];
        var i;
        optionItems.push(<option label="Please choose an option" value={-1}>"Please choose an option"</option>)
        for (i=0;i<artistobjects.length;i++)
        {
            if (artists[i]===this.state.artist){
                optionItems.push(<option selected="selected" label={artists[i]} value={artistobjects[i]}>{artists[i]}</option>);
            }
            else{
                optionItems.push(<option label={artists[i]} value={artistobjects[i]}>{artists[i]}</option>);
            }
        }
        console.log(optionItems);
        alsoOptionItems.push(<option label="Please choose an option" value={-1}>"Please choose an option"</option>)
        for (i=0;i<museumobjects.length;i++)
        {
            if (museums[i]===this.state.museum) {
                alsoOptionItems.push(<option selected="selected" label={museums[i]} value={museumobjects[i]}>{museums[i]}</option>);
            }
            else{
                alsoOptionItems.push(<option label={museums[i]} value={museumobjects[i]}>{museums[i]}</option>);
            }
        }
        return (
            <>
                {this.state.alertShow && <Alert variant={'danger'}>{this.state.alertMessage}</Alert>}
                <div className="m-4">
                    <div className="row my-2 mr-0">
                        <h3>Country</h3>
                        <button
                            className="btn btn-outline-secondary ml-auto"
                            onClick={() => this.props.history.goBack()}><FontAwesomeIcon icon={faChevronLeft}/>{' '}Back
                        </button>
                    </div>
                    <Form onSubmit={this.onSubmit}>
                        <Form.Group>
                            <Form.Label>Title</Form.Label>
                            <Form.Control
                                type="text"
                                placeholder="Title"
                                onChange={this.handleChange}
                                value={this.state.name}
                                name="name"
                                autoComplete="off"
                            />
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Author</Form.Label>
                            <p></p>
                            <select name="artist" onChange={this.handleChange}>
                                {optionItems}
                            </select>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Home Museum</Form.Label>
                            <p></p>
                            <select name="museum" onChange={this.handleChange}>
                                {alsoOptionItems}
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

export default connect()(PaintingComponent);