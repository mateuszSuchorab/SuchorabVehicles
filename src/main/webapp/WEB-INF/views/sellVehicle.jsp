<%--
  Created by IntelliJ IDEA.
  Author: Mateusz Suchorab <suchorab.mateusz@gmail.com>
  Date: 2018-04-09
  Time: 16:50
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    var acceptableVehiclesList = new Array();
    var radioVar ="Cars";
    function preGetAcceptableVehicles() {
        var i = 0;
        var acceptableVehicle = {make: "", model: "", type: ""};
        $("#selectOptionMake option").each(function () {
            if (i % 3 == 0) {
                acceptableVehicle.make = $(this).val();
            }
            if (i % 3 == 1) {
                acceptableVehicle.model = $(this).val();
            }
            if (i % 3 == 2) {
                acceptableVehicle.type = $(this).val();
                acceptableVehiclesList.push(acceptableVehicle);
                acceptableVehicle = {make: "", model: "", type: ""};
            }
            i++;

        });
    }

    function getAcceptableVehicles(vehicleType) {
        var acceptableVehiclesListMake = new Array();
        var acceptableVehiclesListModel = new Array();

        for (var i = 0; i < acceptableVehiclesList.length; i++) {
            if (acceptableVehiclesList[i].type == vehicleType) {
                acceptableVehiclesListMake.push(acceptableVehiclesList[i].make);
            }
            if (acceptableVehiclesList[i].type == vehicleType && acceptableVehiclesList[i].make == acceptableVehiclesListMake[0]) {
                acceptableVehiclesListModel.push(acceptableVehiclesList[i].model);
            }
        }
        acceptableVehiclesListMake = jQuery.unique(acceptableVehiclesListMake);

        $("#selectOptionMake option").remove();
        $.each(acceptableVehiclesListMake, function (key, value) {
            $("#selectOptionMake").append("<option value=" + value + ">" + value + "</option>");
        });
        $("#selectOptionModel option").remove();
        $.each(acceptableVehiclesListModel, function (key, value) {
            $("#selectOptionModel").append("<option value=" + value + ">" + value + "</option>");
        });
    }

    function getAcceptableVehiclesModel(vehicleType, vehicleMake) {

        var acceptableVehiclesListModel = new Array();
        for (var i = 0; i < acceptableVehiclesList.length; i++) {

            if (acceptableVehiclesList[i].type == vehicleType && acceptableVehiclesList[i].make == vehicleMake) {
                acceptableVehiclesListModel.push(acceptableVehiclesList[i].model);
            }
        }

        $("#selectOptionModel option").remove();
        $.each(acceptableVehiclesListModel, function (key, value) {
            $("#selectOptionModel").append("<option value=" + value + ">" + value + "</option>");
        });
    }

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
        preGetAcceptableVehicles();
        getAcceptableVehicles(radioVar);
        $('.radio input:radio').bind('click', function (event) {
            if(this.name == "vehicle_type"){
            getAcceptableVehicles($(this).val());
            radioVar = $(this).val();
            }
        });
        $('#selectOptionMake').bind('change', function (event) {
            getAcceptableVehiclesModel(radioVar, $('#selectOptionMake option:selected').val());
        });
    });

</script>
<body>
<jsp:include page="header.jsp"/>

<!-- content -->
<div class="container">
    <div class="main">
        <!-- start registration -->
        <div class="registration">
            <div class="registration_left" style="width:80% !important">
                <h2>you want to sell your vehicle? <span> <br><br>make a offer for us! </span></h2>

                <div class="registration_form">
                    <!-- Form -->
                    <form id="registration_form" action="${pageContext.request.contextPath}/successOffer" method="POST"
                          enctype="multipart/form-data">
                        <!-- enctype="multipart/form-data"-->

                        <fieldset id="inputs">
                            <div class="sky-form">
                                <div class="sky_form1">
                                    <ul>
                                        <li><label class="radio left"><input type="radio" name="vehicle_type"
                                                                             value="Cars"
                                                                             checked=""><i></i>Car</label></li>
                                        <li><label class="radio"><input type="radio" name="vehicle_type"
                                                                        value="Motorbikes"><i></i>Motorbike</label></li>
                                        <li><label class="radio"><input type="radio" name="vehicle_type"
                                                                        value="Trucks"><i></i>Truck</label></li>
                                        <li><label class="radio"><input type="radio" name="vehicle_type"
                                                                        value="Vans"><i></i>Van</label></li>
                                        <li><label class="radio"><input type="radio" name="vehicle_type"
                                                                        value="Buses"><i></i>Bus</label></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                </div>
                            </div>
                            <div>
                                <label>
                                    <label for="selectOptionMake">Choose vehicle make</label>
                                    <select class="selectOptionMake" id="selectOptionMake" name="vehicle_make">
                                        <c:forEach items="${acceptableVehiclesList}"
                                                   var="acceptableVehiclesListElement">
                                            <option value="<c:out value="${acceptableVehiclesListElement.make}"/>">${acceptableVehiclesListElement.make}</option>
                                            <option value="<c:out value="${acceptableVehiclesListElement.model}"/>">${acceptableVehiclesListElement.model}</option>
                                            <option value="<c:out value="${acceptableVehiclesListElement.vehicleType}"/>">${acceptableVehiclesListElement.vehicleType}</option>
                                        </c:forEach>
                                    </select>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <label for="selectOptionModel">Choose vehicle model</label>
                                    <select class="selectOptionModel" id="selectOptionModel" name="vehicle_model">
                                        <option value="Model">Model</option>
                                    </select>

                                </label>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="Vehicle power (in HP):" type="number" tabindex="3"
                                           name="vehicle_power"
                                           id="vehicle_power" required>
                                </label>
                            </div>
                            <div class="sky-form">
                                <div class="sky_form1">
                                    <ul>
                                        <li><label class="radio left"><input type="radio" name="vehicle_fuelType"
                                                                             value="Petrol"
                                                                             checked=""><i></i>Petrol</label></li>
                                        <li><label class="radio"><input type="radio" name="vehicle_fuelType"
                                                                        value="Diesel"><i></i>Diesel</label></li>
                                        <li><label class="radio"><input type="radio" name="vehicle_fuelType"
                                                                        value="Hybryd"><i></i>Hybryd</label></li>
                                        <li><label class="radio"><input type="radio" name="vehicle_fuelType"
                                                                        value="LPG"><i></i>LPG</label></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                </div>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="Vehicle first registration" type="text" tabindex="4"
                                           name="vehicle_firstRegistration"
                                           id="vehicle_firstRegistration" required>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="Vehicle kilometerage " type="number" tabindex="5"
                                           name="vehicle_kilometer"
                                           id="vehicle_kilometer" required>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="Your price (in €)" type="number" tabindex="6"
                                           name="vehicle_price"
                                           id="vehicle_price" required>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <label for="vehicle_picture1">Choose a picture 1</label>
                                    <input type="file" tabindex="7" name="vehicle_picture1" id="vehicle_picture1"
                                           accept="image/x-png,image/gif,image/jpeg">
                                </label>
                            </div>
                            <div>
                                <label>
                                    <label for="vehicle_picture2">Choose a picture 2</label>
                                    <input type="file" tabindex="8" name="vehicle_picture2" id="vehicle_picture2"
                                           accept="image/x-png,image/gif,image/jpeg">
                                </label>
                            </div>
                            <div>
                                <label>
                                    <label for="vehicle_picture3">Choose a picture 3</label>
                                    <input type="file" tabindex="9" name="vehicle_picture3" id="vehicle_picture3"
                                           accept="image/x-png,image/gif,image/jpeg">
                                </label>
                            </div>
                            <div>
                                <label>
                                    <label for="vehicle_picture4">Choose a picture 4</label>
                                    <input type="file" tabindex="10" name="vehicle_picture4" id="vehicle_picture4"
                                           accept="image/x-png,image/gif,image/jpeg">
                                </label>
                            </div>
                            <div>
                                <label>
                                    <textarea placeholder="enter car details here" tabindex="11" name="vehicle_details"
                                              id="vehicle_details" cols="40" rows="5"></textarea>
                                </label>
                            </div>
                        </fieldset>
                        <fieldset id="actions">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <div>
                                <input type="submit" value="create an offer" id="vehicle_submit">
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
</html>
