<%--
  Created by IntelliJ IDEA.
  User: Mati
  Date: 2018-04-01
  Time: 16:42
@author Mateusz Suchorab <suchorchorab.mateusz@gmail.com>--%>
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
                <h2>Page not found. Error 404.
                    <br>
                    <br>
                    <span><a href="${pageContext.request.contextPath}/index">Click here to open home page!</a></span>
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