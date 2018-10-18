<%--
  Created by IntelliJ IDEA.
  @author Mateusz Suchorab <suchorchorab.mateusz@gmail.com>
  Date: 2018-04-10
  Time: 00:22
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="header.jsp"/>
<div class="container">
    <div class="main">
        <div class="registration">
            <div class="registration_left">
                <h2>You successfully created an offer
                    <br>
                    <br>
                    We will contact with you
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
<jsp:include page="footer.jsp"/>
</body>
</html>
