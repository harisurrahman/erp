import React from "react";
function Register() {
    return (
        <section className="vh-100">
            <div class="login-page">
                <div class="form">
                    <form class="register-form">
                        <input type="text" placeholder="name" />
                        <input type="password" placeholder="password" />
                        <input type="text" placeholder="email address" />
                        <button>create</button>
                        <p class="message">
                            Already registered? <a href="#">Sign In</a>
                        </p>
                    </form>
                </div>
            </div>
        </section>
    );
}

export default Register;
