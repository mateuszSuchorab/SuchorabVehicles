<%--
  Created by IntelliJ IDEA.
  User: Mateusz Suchorab <suchorchorab.mateusz@gmail.com>
  Date: 2018-05-04
  Time: 12:10
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>

<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="women_main">
        <!-- start content -->
        <div class="row single">
            <div class="col-md-12 det">
                <div class="single_left">
                    <div class="grid images_3_of_2">
                        <ul id="etalage">
                            <li>
                                <a>
                                    <c:choose>
                                        <c:when test="${vehicle.image1==NULL}">
                                            <img class="etalage_thumb_image"
                                                 src="<c:url value="/resources/static/images/imageNotFoundBig.png"/>"
                                                 class="img-responsive"/>
                                            <img class="etalage_source_image"
                                                 src="<c:url value="/resources/static/images/imageNotFoundBig.png"/>"
                                                 class="img-responsive" title=""/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="etalage_thumb_image"
                                                 src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicle.vehicleId}&image=1"/>"
                                                 class="img-responsive"/>
                                            <img class="etalage_source_image"
                                                 src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicle.vehicleId}&image=1"/>"
                                                 class="img-responsive" title=""/>
                                        </c:otherwise>
                                    </c:choose>
                                </a>
                            </li>
                            <li>
                                <c:choose>
                                    <c:when test="${vehicle.image2==NULL}">
                                        <img class="etalage_thumb_image"
                                             src="<c:url value="/resources/static/images/imageNotFoundBig.png"/>"
                                             class="img-responsive"/>
                                        <img class="etalage_source_image"
                                             src="<c:url value="/resources/static/images/imageNotFoundBig.png"/>"
                                             class="img-responsive" title=""/>
                                    </c:when>
                                    <c:otherwise>
                                        <img class="etalage_thumb_image"
                                             src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicle.vehicleId}&image=2"/>"
                                             class="img-responsive"/>
                                        <img class="etalage_source_image"
                                             src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicle.vehicleId}&image=2"/>"
                                             class="img-responsive" title=""/>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                            <li>
                                <c:choose>
                                    <c:when test="${vehicle.image3==NULL}">
                                        <img class="etalage_thumb_image"
                                             src="<c:url value="/resources/static/images/imageNotFoundBig.png"/>"
                                             class="img-responsive"/>
                                        <img class="etalage_source_image"
                                             src="<c:url value="/resources/static/images/imageNotFoundBig.png"/>"
                                             class="img-responsive" title=""/>
                                    </c:when>
                                    <c:otherwise>
                                        <img class="etalage_thumb_image"
                                             src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicle.vehicleId}&image=3"/>"
                                             class="img-responsive"/>
                                        <img class="etalage_source_image"
                                             src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicle.vehicleId}&image=3"/>"
                                             class="img-responsive" title=""/>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                            <li>
                                <c:choose>
                                    <c:when test="${vehicle.image4==NULL}">
                                        <img class="etalage_thumb_image"
                                             src="<c:url value="/resources/static/images/imageNotFoundBig.png"/>"
                                             class="img-responsive"/>
                                        <img class="etalage_source_image"
                                             src="<c:url value="/resources/static/images/imageNotFoundBig.png"/>"
                                             class="img-responsive" title=""/>
                                    </c:when>
                                    <c:otherwise>
                                        <img class="etalage_thumb_image"
                                             src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicle.vehicleId}&image=4"/>"
                                             class="img-responsive"/>
                                        <img class="etalage_source_image"
                                             src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicle.vehicleId}&image=4"/>"
                                             class="img-responsive" title=""/>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="desc1 span_3_of_2">
                        <h3><c:out value="${vehicle.make}"/> <c:out value="${vehicle.model}"/></h3>
                        <span class="brand">Type: <a
                                href="${pageContext.request.contextPath}/<c:out value="${vehicle.vehicleType}"/>"><c:out
                                value="${vehicle.vehicleType}"/> </a></span>
                        <br>
                        <span class="brand">Kilometrage: <c:out value="${vehicle.kilometer}"/></span>
                        <br>
                        <span class="brand">First registration: <fmt:formatDate value="${vehicle.firstRegistration}"
                                                                                pattern="MM/yyyy "/></span>
                        <br>
                        <span class="brand">Horse power: <c:out value="${vehicle.power}"/></span>
                        <br>
                        <span class="brand">Fuel type: <c:out value="${vehicle.fuelType}"/></span>
                        <br>
                        <div class="price">
                            <span class="text">Price:</span>
                            <span class="price-new"><c:out value="${vehicle.price}"/> €</span>
                        </div>
                        <!-- <div class="btn_form">
                            <a href="checkout.html">Wanna by it?</a>
                        </div>
                        <a href="${pageContext.request.contextPath}/vehiclePDF<c:out value="${vehicle.vehicleId}"/>"><span>Download this offer as PDF</span></a>
                        -->
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-bottom1">
                    <h6>Details</h6>
                    <p class="prod-desc"><c:out value="${vehicle.details}"/></p>
                </div>
                <div class="single-bottom2">
                    <h6>Check these vehicles too</h6>
                    <div class="product">
                        <div class="product-desc">
                            <div class="product-img" >
                                <a href="${pageContext.request.contextPath}/vehicle<c:out value="${firstAdditionalVehicle.vehicleId}"/>">
                                <c:choose>
                                    <c:when test="${firstAdditionalVehicle.image1==NULL}">
                                        <img src="<c:url value="/resources/static/images/imageNotFound.png"/>"
                                             class="img-responsive "
                                             alt=""
                                             />
                                    </c:when>
                                    <c:otherwise>
                                        <img src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${firstAdditionalVehicle.vehicleId}&image=1"/>"
                                             class="img-responsive "
                                             alt=""
                                             href="${pageContext.request.contextPath}/vehicle<c:out value="${firstAdditionalVehicle.vehicleId}"/>"/>
                                    </c:otherwise>
                                </c:choose>
                                </a>
                            </div>
                            <div class="prod1-desc">
                                <h5><a class="product_link"
                                       href="${pageContext.request.contextPath}/vehicle<c:out value="${firstAdditionalVehicle.vehicleId}"/>"><c:out
                                        value="${firstAdditionalVehicle.make}"/> <c:out
                                        value="${firstAdditionalVehicle.model}"/></a></h5>
                                <p class="product_descr"> Type: <c:out value="${firstAdditionalVehicle.vehicleType}"/>
                                    <br>Kilomatrage: <c:out value="${firstAdditionalVehicle.kilometer}"/> <br>First
                                    registration: <fmt:formatDate value="${firstAdditionalVehicle.firstRegistration}"
                                                                  pattern="MM/yyyy "/> <br>Horse power: <c:out
                                            value="${firstAdditionalVehicle.power}"/> <br>Fuel type: <c:out
                                            value="${firstAdditionalVehicle.fuelType}"/></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="product_price">
                            <span class="price-access"><c:out value="${firstAdditionalVehicle.price}"/>  €</span>
                            <form action="${pageContext.request.contextPath}/vehicle<c:out value="${firstAdditionalVehicle.vehicleId}"/>">
                                <button class="button1"><span>Check this vehicle! </span></button>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="product">
                        <div class="product-desc">
                            <div class="product-img">
                                <a href="${pageContext.request.contextPath}/vehicle<c:out value="${secondAdditionalVehicle.vehicleId}"/>">
                                <c:choose>
                                    <c:when test="${secondAdditionalVehicle.image1==NULL}">
                                        <img src="<c:url value="/resources/static/images/imageNotFound.png"/>"
                                             class="img-responsive "
                                             alt=""/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${secondAdditionalVehicle.vehicleId}&image=1"/>"
                                             class="img-responsive "
                                             alt=""/>
                                    </c:otherwise>
                                </c:choose>
                                </a>
                            </div>
                            <div class="prod1-desc">
                                <h5><a class="product_link"
                                       href="${pageContext.request.contextPath}/vehicle<c:out value="${secondAdditionalVehicle.vehicleId}"/>"><c:out
                                        value="${secondAdditionalVehicle.make}"/> <c:out
                                        value="${secondAdditionalVehicle.model}"/></a></h5>
                                <p class="product_descr"> Type: <c:out value="${secondAdditionalVehicle.vehicleType}"/>
                                    <br>Kilomatrage: <c:out value="${secondAdditionalVehicle.kilometer}"/> <br>First
                                    registration: <fmt:formatDate value="${secondAdditionalVehicle.firstRegistration}"
                                                                  pattern="MM/yyyy "/> <br>Horse power: <c:out
                                            value="${secondAdditionalVehicle.power}"/> <br>Fuel type: <c:out
                                            value="${secondAdditionalVehicle.fuelType}"/></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="product_price">
                            <span class="price-access"><c:out value="${secondAdditionalVehicle.price}"/>  €</span>
                            <form action="${pageContext.request.contextPath}/vehicle<c:out value="${secondAdditionalVehicle.vehicleId}"/>">
                                <button class="button1"><span>Check this vehicle! </span></button>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
        <!-- end content -->
    </div>
</div>


<jsp:include page="footer.jsp"/>
</body>


<script>
    jQuery(document).ready(function ($) {

        $('#etalage').etalage({
            thumb_image_width: 300,
            thumb_image_height: 400,
            source_image_width: 900,
            source_image_height: 1200,
            show_hint: true,
            click_callback: function (image_anchor, instance_id) {
                alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
            }
        });

    });
</script>
</html>