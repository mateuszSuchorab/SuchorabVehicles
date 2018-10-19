<%--
  Created by IntelliJ IDEA.
  Author: Mateusz Suchorab <suchorab.mateusz@gmail.com>
  Date: 2018-04-09
  Time: 16:50
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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

<!-- content -->
<div class="container">
    <div class="main">
        <!-- start registration -->
        <div class="registration">
            <div class="registration_left" style="width:80% !important">
                <h2>you want to sell your vehicle? <span> <br><br>make a offer for us! </span></h2>

                <div class="registration_form">
                    <!-- Form -->
                    <form id="registration_form" action="${pageContext.request.contextPath}/successOffer" method="POST">
                         <!-- enctype="multipart/form-data"-->

                        <fieldset id="inputs">
                        <div class="sky-form">
                            <div class="sky_form1">
                                <ul>
                                    <li><label class="radio left"><input type="radio" name="vehicle_type" value="Cars"
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
                                <input placeholder="Vehicle make:" type="text" tabindex="1" name="vehicle_make"
                                       id="vehicle_make" required autofocus>
                            </label>
                        </div>
                        <div>
                            <label>
                                <input placeholder="Vehicle model:" type="text" tabindex="2" name="vehicle_model"
                                       id="vehicle_model" required autofocus>
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
                                <input placeholder="Your price (in €)" type="number" tabindex="6" name="vehicle_price"
                                       id="vehicle_price" required>
                            </label>
                        </div>
                     <!--   <div>
                            <label>
                                <label for="vehicle_picture1">Choose a picture 1</label>
                                <input placeholder="Enter details of car here" type="file" tabindex="7"
                                       name="vehicle_picture1" id="vehicle_picture1"
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
                        </div>-->
                        <div>
                            <label>
                                <textarea placeholder="enter car details here" tabindex="11" name="vehicle_details" id="vehicle_details" cols="40" rows="5"></textarea>
                            </label>
                        </div>
                        </fieldset>
                        <fieldset id="actions">
                        <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
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
