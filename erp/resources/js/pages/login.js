import React from "react";
import Logo from "../../images/jainasoft-logo.png";

function Login() {
    return (
        <div className="flexBox">
            <div className="container">
                <div className="row flexLogo">
                    <img src={Logo} alt="logo" style={{ width: "100px" }} />
                </div>
                <div className="row justify-content-center">
                    <div className="col-md-8">
                        <div className="card">
                            <div className="card-header">Login</div>
                            <div className="card-body">
                                <form method="POST">
                                    <div className="form-group row">
                                        <label
                                            for="email"
                                            className="col-md-4 col-form-label text-md-right"
                                        >
                                            E-Mail Address
                                        </label>
                                        <div className="col-md-7">
                                            <input
                                                type="email"
                                                className="form-control"
                                                name="email"
                                                required
                                                autocomplete="email"
                                                autofocus
                                            />
                                            <span
                                                className="invalid-feedback"
                                                role="alert"
                                            >
                                                <strong></strong>
                                            </span>
                                        </div>
                                    </div>

                                    <div className="form-group row">
                                        <label
                                            for="password"
                                            className="col-md-4 col-form-label text-md-right"
                                        >
                                            Password
                                        </label>

                                        <div className="col-md-7">
                                            <input
                                                id="password"
                                                type="password"
                                                className="form-control"
                                                name="password"
                                                required
                                                autocomplete="current-password"
                                            />
                                            <span
                                                className="invalid-feedback"
                                                role="alert"
                                            >
                                                <strong></strong>
                                            </span>
                                        </div>
                                    </div>

                                    <div className="form-group row">
                                        <div className="col-md-6 offset-md-4">
                                            <div className="form-check">
                                                <input
                                                    className="form-check-input"
                                                    type="checkbox"
                                                    name="remember"
                                                    id="remember"
                                                />

                                                <label
                                                    className="form-check-label"
                                                    for="remember"
                                                >
                                                    Remember Me
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div className="form-group row">
                                        <div className="col-md-8 offset-md-4">
                                            <div className="row">
                                                <div className="col-md-12 col-lg-5">
                                                    <button
                                                        type="submit"
                                                        className="btn btn-primary"
                                                        style={{
                                                            width: "100%",
                                                            fontSize: "95%",
                                                            color: "BLACK",
                                                        }}
                                                    >
                                                        Login
                                                    </button>
                                                </div>
                                                <div className="col-md-12 col-lg-5">
                                                    <button
                                                        className="btn btn-info"
                                                        style={{
                                                            width: "100%",
                                                            fontSize: "95%",
                                                        }}
                                                    >
                                                        Forgot pasword
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Login;
