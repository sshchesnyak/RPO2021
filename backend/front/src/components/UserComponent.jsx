import {Component} from "react";
import BackendService from "../services/BackendService";
import {alertActions} from "../utils/Rdx";
import {faChevronLeft} from "@fortawesome/free-solid-svg-icons";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {Form, Formik, Field} from "formik";
import{connect} from "react-redux";
import Utils from "../utils/Utils"

class UserComponent extends Component {

    constructor(props) {
        super(props);

        this.state = {
            id: this.props.match.params.id,
            login: '',
            email: '',
            pwd: '',
            pwd2: '',
            show_pwd: false,
        }

        this.onSubmit = this.onSubmit.bind(this)
        this.validate = this.validate.bind(this)
        this.onSetPasswordClick = this.onSetPasswordClick.bind(this)
    }

    componentDidMount() {
        if (parseInt(this.state.id) !== -1) {
            BackendService.retrieveUser(this.state.id)
                .then(response => {
                    this.setState({
                        login: response.data.login,
                        email: response.data.email,
                    })
                })
                .catch(() => {
                });
        }
    }

    onSetPasswordClick() {
        this.setState({show_pwd: true, pwd: ''});
    }

    onSubmit(values){
        let user = {
            id: this.state.id,
            login: values.login,
            email: values.email,
            password: values.pwd,
            np: values.pwd
        }
        console.log("this activates?");
        if (parseInt(user.id) === -1) {
            BackendService.createUser(user)
                .then((res) => {
                    if (res.data.error) {
                        console.log(res.data.error)
                        throw new Error(res.data.error);
                    }
                    this.props.history.goBack();
                })
                .catch((e) => {
                    this.props.dispatch(alertActions.error(e));
                    this.setState({alertShow: true, alertMessage: 'A user under that username already in existence'});
                })
        } else {
            BackendService.updateUser(user)
                .then(() => this.props.history.goBack())
                .catch(() => {
                })
        }
    }

    validate(values){
        let e = null;
        let errors = {}
        if (values.pwd) {
            if (values.pwd2.length < 8)
                e = 'Password length should be 8 or greater'
            else if (!values.pwd2)
                e = 'Please repeat password'
            else if (values.pwd !== values.pwd2)
                e = 'Passwords do not match'
        }
        if (e != null) {
            errors.error = "error"
            this.props.dispatch(alertActions.error(e))
        }
        return errors
    }

    render() {
        let {id, login, email, pwd, pwd2, admin} = this.state;
        console.log("Problems after here");
        return (
            <div>
                <div className="container">
                    <div className="row my-2 mr-0">
                        <h3>User</h3>
                        <button className="btn btn-outline-secondary ml-auto" onClick={()=>this.props.history.push('/home')}>
                            <FontAwesomeIcon icon={faChevronLeft}/>{' '}Back</button>
                    </div>
                    <Formik
                        initialValues={{id, login, email, pwd, pwd2, admin}}
                        onSubmit={this.onSubmit}
                        validateOnChange={false}
                        validateOnBlur={false}
                        validate={this.validate}
                        enableReinitialize={true}>
                        {
                            (props) => (
                                <Form>
                                    <fieldset className="form-group">
                                        <label>Login</label>
                                        <Field className="form-control" type="text" name="login"/>
                                    </fieldset>
                                    <fieldset className="form-group">
                                        <label>Password</label>
                                        <Field className="form-control" type="text" name="email" validate="validateEmail"/>
                                    </fieldset>
                                    {
                                        this.state.show_pwd &&
                                        <fieldset className="form-group">
                                            <label>Input password</label>
                                            <Field className="form-control" type="password" name="pwd"/>
                                        </fieldset>
                                    }
                                    {
                                        this.state.show_pwd &&
                                        <fieldset className="form-group">
                                            <label>Repeat password</label>
                                            <Field className="form-control" type="password" name="pwd2"/>
                                        </fieldset>
                                    }
                                    {
                                        !this.state.show_pwd &&
                                        <fieldset className="form-group">
                                            <button className="btn btn-outline-secondary"
                                                    onClick={this.onSetPasswordClick}>Change Password</button>
                                        </fieldset>
                                    }
                                    <button className="btn btn-outline-secondary" type="submit">Save</button>
                                </Form>
                            )
                        }
                    </Formik>
                </div>
            </div>
        )
    }
}

export default connect()(UserComponent);