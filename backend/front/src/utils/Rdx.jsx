import Utils from "./Utils";
import {applyMiddleware, combineReducers, createStore} from "redux";
import {createLogger} from "redux-logger"

/* ACTIONS */

const userConstraints = {
    LOGIN: 'USER_LOGIN',
    LOGOUT: 'USER_LOGOUT',
}

const alertConstraints = {
    ERROR: 'ERROR',
    CLEAR: 'CLEAR',
};

/* ACTION GENERATORS */

export const userActions = {
    login,
    logout
};

export const alertActions = {
    error,
    clear
}

function login(user) {
    Utils.saveUser(user);
    return{type: userConstraints.LOGIN, user};
}

function logout() {
    Utils.removeUser();
    return{type: userConstraints.LOGOUT}
}

function error(msg){
    return{type: alertConstraints.ERROR, msg}
}

function clear(){
    return{type: alertConstraints.CLEAR}
}

/* REDUCERS */

let user = Utils.getUser();
const initialState = user ? {user} : {}

function authentication(state=initialState, action) {
    switch (action.type){
        case userConstraints.LOGIN:
            return { user: action.user};
        case userConstraints.LOGOUT:
            return { };
        default:
            return state;
    }
}

function alert(state={},action){
    console.log("alert");
    switch (action.type){
        case alertConstraints.ERROR:
            return{msg:action.msg};
        case alertConstraints.CLEAR:
            return{ };
        default:
            return state;
    }
}

/* STORE */

const rootReducer = combineReducers({authentication, alert});
const loggerMiddleware = createLogger();

export const store = createStore(
    rootReducer,
    applyMiddleware(loggerMiddleware)
)