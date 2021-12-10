import React from "react";
import ReactDOM from "react-dom";
import Login from "./pages/login";
import "../css/app.scss";

if (document.getElementById("app-container")) {
    ReactDOM.render(<Login />, document.getElementById("app-container"));
}
