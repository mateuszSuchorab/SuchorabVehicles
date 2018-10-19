<%-- 
    Document   : register
    Created on : 2018-03-13, 16:42:45
    Author     : Mateusz Suchorab <suchorab.mateusz@gmail.com>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="header.jsp"/>
<!-- content -->
<div class="container">
    <div class="main">
        <!-- start registration -->
        <div class="registration">
            <div class="registration_left">
                <h2>new user? <span> create an account </span></h2>

                <div class="registration_form">
                    <!-- Form -->
                    <form id="registration_form" action="${pageContext.request.contextPath}/register" method="POST">
                        <fieldset id="inputs">

                            <div>
                                <label>
                                    <input placeholder="first name:" type="text" tabindex="1" name="register_firstName"
                                           id="register_firstName" required autofocus>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="last name:" type="text" tabindex="2" name="register_lastName"
                                           id="register_lastName" required autofocus>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="telephone:" type="tel" tabindex="3" name="register_telephone"
                                           id="register_telephone" required autofocus>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="Email address:" type="email" tabindex="4" name="register_email"
                                           id="register_email" required>
                                </label>
                            </div>
                            <div class="sky-form">
                                <div class="sky_form1">
                                    <ul>
                                        <li><label class="radio left"><input type="radio" name="register_radio" value="male"
                                                                             checked=""><i></i>Male</label></li>
                                        <li><label class="radio"><input type="radio" name="register_radio"
                                                                        value="female"><i></i>Female</label></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                </div>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="password" type="password" tabindex="5" name="register_password"
                                           id="register_password" onchange='check_pass();' required>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="retype password" type="password" tabindex="6"
                                           name="register_confirm_password" id="register_confirm_password"
                                           onchange='check_pass();' required>
                                </label>
                            </div>
                        </fieldset>
                        <div>
                            <span clas="brand" id="password_information"><c:out value="${ErrorRegister}"/></span>
                        </div>
                        <fieldset id="actions">
                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                            <div>
                                <input type="submit" value="create an account" id="register_submit" disabled>
                            </div>
                        </fieldset>
                    </form>
                    <!-- /Form -->
                </div>
            </div>
            <div class="registration_left">
                <h2>existing user</h2>
                <div class="registration_form">
                    <!-- Form -->
                    <form id="registration_login_form" action="${pageContext.request.contextPath}/login" method="post">
                        <fieldset id="inputs2">
                        <div>
                            <label>
                                <input placeholder="Email:" type="email" tabindex="3" name="login_email" id="register_login_email" required>
                            </label>
                        </div>
                        <div>
                            <label>
                                <input placeholder="password" type="password" tabindex="4" name="login_password" id="register_login_password" required>
                            </label>
                        </div>
                        </fieldset>
                        <div>
                            <span clas="brand" ><c:out value="${ErrorLogin}"/></span>
                        </div>
                        <fieldset id="actions2">
                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                        <div>
                            <input type="submit" value="sign in" id="register-submit">
                        </div>
                        </fieldset>
                    </form>
                    <!-- /Form -->
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- end registration -->
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
<script>function check_pass() {
    if (document.getElementById('register_password').value ==
        document.getElementById('register_confirm_password').value) {
        document.getElementById('register_submit').disabled = false;
        document.getElementById('password_information').innerHTML = '';

    } else {
        document.getElementById('register_submit').disabled = true;
    }
    if (document.getElementById('register_password').value !=
        document.getElementById('register_confirm_password').value
        && document.getElementById('register_password').value != ""
        && document.getElementById('register_confirm_password').value != "") {
        document.getElementById('password_information').innerHTML = 'Passwords are different !';
    }
}</script>
</html>