<%-- 
    Document   : index
    Created on : 2018-03-13, 16:36:45
    Author     : Mateusz Suchorab <suchorab.mateusz@gmail.com>

--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <jsp:include page="head.jsp" />
    <body>
        <jsp:include page="header.jsp" />
        <div class="arriv">
            <div class="container">
                <div class="arriv-top">
                    <div class="col-md-6 arriv-left">
                        <img src="<c:url value="/resources/images/1.jpg"/>" class="img-responsive" alt="">
                        <div class="arriv-info">
                            <h3>NEW ARRIVALS</h3>
                            <p>CHECK NEW CARS</p>
                            <div class="crt-btn">
                                <a href="${pageContext.request.contextPath}/newArrivals">TAKE A LOOK</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 arriv-right">
                        <img src="<c:url value="/resources/images/2.jpg"/>" class="img-responsive" alt="">
                        <div class="arriv-info">
                            <h3>SELL YOUR VEHICLE</h3>
                            <p>YOU CAN SELL YOUR VEHICLE HERE</p>
                            <div class="crt-btn">
                                <a href="${pageContext.request.contextPath}/sellVehicle">SELL NOW </a>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="arriv-bottm">
                    <div class="col-md-8 arriv-left1">
                        <img src="<c:url value="/resources/images/3.jpg"/>" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="${pageContext.request.contextPath}/Cars"><h3>Cars<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-right1">
                        <img src="<c:url value="/resources/images/4.jpg"/>" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="${pageContext.request.contextPath}/Motorbikes"><h3>Motorbikes<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="arriv-las">
                    <div class="col-md-4 arriv-left2">
                        <img src="<c:url value="/resources/images/5.jpg"/>" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="${pageContext.request.contextPath}/Trucks"><h3>TRUCKS<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-middle">
                        <img src="<c:url value="/resources/images/6.jpg"/>" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="${pageContext.request.contextPath}/Vans"><h3>VANS<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="col-md-4 arriv-right2">
                        <img src="<c:url value="/resources/images/7.jpg"/>" class="img-responsive" alt="">
                        <div class="arriv-info2">
                            <a href="${pageContext.request.contextPath}/Buses"><h3>BUSES<i class="ars"></i></h3></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="special">
        <jsp:include page="footer.jsp" />
    </body>
</html>