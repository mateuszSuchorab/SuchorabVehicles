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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(document).ready(function () {
        $("#vehicle_firstRegistration").datepicker({
            dateFormat: "MM yy",
            defaultDate: "-4y",
            changeMonth: true,
            changeYear: true,
            maxDate: +0,
            minDate: "-20y",
            onClose: function () {
                var iMonth = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                var iYear = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                $(this).datepicker('setDate', new Date(iYear, iMonth, 1));
            },

            beforeShow: function () {
                $('#ui-datepicker-div').addClass('hide-calendar');
                if ((selDate = $(this).val()).length > 0) {
                    iYear = selDate.substring(selDate.length - 4, selDate.length);
                    iMonth = jQuery.inArray(selDate.substring(0, selDate.length - 5), $(this).datepicker('option', 'monthNames'));
                    $(this).datepicker('option', 'defaultDate', new Date(iYear, iMonth, 1));
                    $(this).datepicker('setDate', new Date(iYear, iMonth, 1));
                }
            }
        });
    });
</script>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="women_main">
        <!-- start content -->
        <div class="row single">
            <div class="col-md-12 det">
                <form id="vehicle_form"
                      action="${pageContext.request.contextPath}/admin/vehicle<c:out value="${vehicle.vehicleId}"/>"
                      method="POST" enctype="multipart/form-data">
                    <fieldset id="inputs">
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
                                <h3>Make:</h3>
                                <span class="brand">
                                        <input value="<c:out value="${vehicle.make}"/>" type="text" tabindex="1"
                                               name="vehicle_make"
                                               id="vehicle_make" required autofocus>
                                            </span>
                                <h3>Model:</h3>
                                <span class="brand">
                                        <input class="span" value="<c:out value="${vehicle.model}"/>" type="text"
                                               tabindex="2"
                                               name="vehicle_model"
                                               id="vehicle_model" required autofocus>
                                            </span>
                                <span class="brand">Type: <div class="sky-form">
                            <div class="sky_form1">
                                <ul>
                                    <li><label class="radio left"><input type="radio" name="vehicle_type"
                                                                         value="<c:out value="${vehicle.vehicleType}"/>"
                                                                         checked=""><i></i><c:out
                                            value="${vehicle.vehicleType}"/></label></li>
                                    <c:forEach items="${vehicleTypeList}" var="vehicleType">
                                        <li><label class="radio"><input type="radio" name="vehicle_type"
                                                                        value="${vehicleType}"><i></i>${vehicleType}</label></li>
                                    </c:forEach>

                                    <div class="clearfix"></div>
                                </ul>
                            </div>
                        </div></span>
                                <br>
                                <span class="brand">Kilometrage: <input
                                        value="<c:out value="${vehicle.kilometer}"/>" type="text" tabindex="4"
                                        name="vehicle_kilometer"
                                        id="vehicle_kilometer" required autofocus></span>
                                <br>
                                <span class="brand">First registration: <input value="<fmt:formatDate value="${vehicle.firstRegistration}"
                                                                                pattern="MM/yyyy "/>" type="text"
                                                                               tabindex="5"
                                                                               name="vehicle_firstRegistration"
                                                                               id="vehicle_firstRegistration" required
                                                                               autofocus></span>
                                <br>
                                <span class="brand">Horse power: <input value="<c:out value="${vehicle.power}"/>"
                                                                        type="text" tabindex="6"
                                                                        name="vehicle_power"
                                                                        id="vehicle_power" required autofocus></span>
                                <br>
                                <span class="brand">Fuel type: <div class="sky-form">
                            <div class="sky_form1">
                                <ul>
                                    <li><label class="radio left"><input type="radio" name="vehicle_fuelType"
                                                                         value="<c:out value="${vehicle.fuelType}"/>"
                                                                         checked=""><i></i><c:out
                                            value="${vehicle.fuelType}"/></label></li>
                                    <c:forEach items="${vehicleFuelList}" var="vehicleFuel">
                                        <li><label class="radio"><input type="radio" name="vehicle_fuelType"
                                                                        value="${vehicleFuel}"><i></i>${vehicleFuel}</label></li>
                                    </c:forEach>

                                    <div class="clearfix"></div>
                                </ul>
                            </div>
                        </div></span>
                                <br>
                                <span class="brand">Price : <input value="<c:out value="${vehicle.price}"/>"
                                                                   type="text" tabindex="7"
                                                                   name="vehicle_price"
                                                                   id="vehicle_price" required autofocus>
                                </span>
                                <span class="brand">
                                <label for="vehicle_picture1">If you want change picture, choose a picture no.1</label>
                                <input type="file" tabindex="7" name="vehicle_picture1" id="vehicle_picture1"
                                       accept="image/x-png,image/gif,image/jpeg">
                        </span>
                                <span class="brand">
                                <label for="vehicle_picture2">If you want change picture, choose a picture no.2</label>
                                <input type="file" tabindex="8" name="vehicle_picture2" id="vehicle_picture2"
                                       accept="image/x-png,image/gif,image/jpeg">
                        </span>
                                <span class="brand">
                                <label for="vehicle_picture3">If you want change picture, choose a picture no.3</label>
                                <input type="file" tabindex="9" name="vehicle_picture3" id="vehicle_picture3"
                                       accept="image/x-png,image/gif,image/jpeg">
                        </span>
                                <span class="brand">
                                <label for="vehicle_picture4">If you want change picture, choose a picture no.4</label>
                                <input type="file" tabindex="10" name="vehicle_picture4" id="vehicle_picture4"
                                       accept="image/x-png,image/gif,image/jpeg">
                        </span>
                                <span class="brand">First name: <c:out value="${user.firstName}"/></span>
                                <br>
                                <span class="brand">Last name: <c:out value="${user.lastName}"/></span>
                                <br>
                                <span class="brand">Email: <c:out value="${user.email}"/></span>
                                <br>
                                <span class="brand">Telephone: <c:out value="${user.telephone}"/></span>
                                <br>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="single-bottom1">
                            <h6>Details</h6>
                            <p class="prod-desc"><span class="brand"><input
                                    value="<c:out value="${vehicle.details}"/>" type="text" tabindex="8"
                                    name="vehicle_details"
                                    id="vehicle_details" required autofocus></span></p>
                        </div>
                    </fieldset>
                    <fieldset id="actions">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <div class="brand">
                            <input type="submit" value="The offer is ready to be put online" id="vehicle_submit">
                        </div>
                    </fieldset>
                </form>
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