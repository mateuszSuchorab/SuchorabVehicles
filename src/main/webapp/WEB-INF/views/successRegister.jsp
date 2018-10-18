<%-- 
    Document   : successRegister
    Created on : 2018-03-21, 15:20:15
    Author     : Mateusz Suchorab <suchorab.mateusz@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp" />
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <div class="main">
                <div class="registration">
                    <div class="registration_left">
                        <h2>You successfully created an account 
                            <br>
                            <br>
                            <span><a href="${pageContext.request.contextPath}/">Click here to open the home page!</a></span>
                        </h2>
                        <br>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
