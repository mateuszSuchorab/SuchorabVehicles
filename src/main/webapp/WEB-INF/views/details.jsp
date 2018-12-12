<%--
  Created by IntelliJ IDEA.
  User: Mati
  Date: 2018-03-26
  Time: 16:08
  To change this template use File | Settings | File Templates.
  @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(document).ready(function () {
        $("#min_registrationTime, #max_registrationTime").datepicker({
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
                var id = this.id;
                if (id == 'min_registrationTime'){
                    insertParam('min_registrationTime',getValue('min_registrationTime'));
                }
                if (id == 'max_registrationTime'){
                    insertParam('max_registrationTime',getValue('max_registrationTime'));
                }

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
    <div class="women_main">
        <!-- start sidebar -->
        <div class="col-md-3 s-d">
            <div class="w_sidebar">
                <div class="w_nav1">
                    <h4>${vehicleType}</h4>
                    <ul>
                        <c:forEach items="${vehicleTypeList}" var="vehicleTypeListElement">
                            <li>
                                <a href="<c:out value="${vehicleTypeListElement}"/>">${vehicleTypeListElement}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <h3>filter by</h3>
                <c:if test="${not empty vehicleMakeList}">
                <section class="sky-form">
                    <h4>Make</h4>
                    <div class="row1 scroll-pane">
                        <div class="col col-4">
                            <c:forEach items="${vehicleMakeList}" var="vehicleMakeListElement">
                                <c:set var="containsMake" value="false"/>
                                <c:forEach items="${uncheckedMakeList}" var="uncheckedMake">
                                    <c:if test="${uncheckedMake eq vehicleMakeListElement}">
                                        <c:set var="containsMake" value="true"/>
                                    </c:if>
                                </c:forEach>
                                <c:choose>
                                    <c:when test="${containsMake}">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"
                                                                       onclick="insertParam('makeList','<c:out
                                                                               value="${vehicleMakeListElement}"/>');">
                                            <i></i><c:out value="${vehicleMakeListElement}"/></label>
                                    </c:when>
                                    <c:otherwise>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""
                                                                       onclick="insertParam('makeList','<c:out
                                                                               value="${vehicleMakeListElement}"/>');">
                                            <i></i><c:out value="${vehicleMakeListElement}"/></label>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>
                    </div>
                </section>
                </c:if>
                <c:if test="${not empty vehicleModelList}">
                <section class="sky-form">
                    <h4>Model</h4>
                    <div class="row1 scroll-pane">
                        <div class="col col-4">
                            <c:forEach items="${vehicleModelList}" var="vehicleModelListElement">
                                <c:set var="containsModel" value="false"/>
                                <c:forEach items="${uncheckedModelList}" var="uncheckedModel">
                                    <c:if test="${uncheckedModel eq vehicleModelListElement}">
                                        <c:set var="containsModel" value="true"/>
                                    </c:if>
                                </c:forEach>

                                <c:choose>
                                    <c:when test="${containsModel}">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"
                                                                       onclick="insertParam('modelList','<c:out
                                                                               value="${vehicleModelListElement}"/>');"><i></i><c:out
                                                value="${vehicleModelListElement}"/></label>
                                    </c:when>
                                    <c:otherwise>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""
                                                                       onclick="insertParam('modelList','<c:out
                                                                               value="${vehicleModelListElement}"/>');"><i></i><c:out
                                                value="${vehicleModelListElement}"/></label>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>
                    </div>
                </section>
                </c:if>
                <section class="sky-form">
                    <h4>Price</h4>
                    <div class="row2 scroll-pane">
                        <div class="col col-4">
                            <label>
                                <input placeholder="Min:" type="number" tabindex="1" name="min_price"
                                       id="min_price" min="0" required autofocus <c:if test="${minPrice != null}"> value="${minPrice}" </c:if>
                                       onchange="insertParam('min_price',getValue('min_price'));">
                            </label>
                            <br>
                            <label>
                                <input placeholder="Max:" type="number" tabindex="1" name="max_price"
                                       id="max_price" min="0" required autofocus <c:if test="${maxPrice != null}"> value="${maxPrice}" </c:if>
                                       onchange="insertParam('max_price',getValue('max_price'));">
                            </label>
                        </div>
                    </div>
                </section>
                <section class="sky-form">
                    <h4>First registration date</h4>
                    <div class="row2 scroll-pane">
                        <div class="col col-4">
                            <label>
                                <input placeholder="Min:" type="text" tabindex="2" name="min_registrationTime"
                                       id="min_registrationTime" required autofocus <c:if test="${minRegistrationTime != null}"> value="${minRegistrationTime}" </c:if>>
                            </label>
                            <br>
                            <label>
                                <input placeholder="Max:" type="text" tabindex="2" name="max_registrationTime"
                                       id="max_registrationTime" required autofocus <c:if test="${maxRegistrationTime != null}"> value="${maxRegistrationTime}" </c:if>>
                            </label>
                        </div>
                    </div>
                </section>
                <section class="sky-form">
                    <h4>Fuel Type</h4>
                    <div class="row3 scroll-pane">
                        <div class="col col-4">
                            <c:set var="containsDiesel" value="true" />
                            <c:set var="containsPetrol" value="true" />
                            <c:set var="containsHybryd" value="true" />
                            <c:set var="containsLPG"    value="true" />
                            <c:forEach var="fuelType" items="${fuelTypeList}">
                                <c:if test="${fuelType eq 'LPG'}">dsadsa <c:set var="containsLPG" value="false" /> </c:if>
                                <c:if test="${fuelType eq 'Petrol'}"> <c:set var="containsPetrol" value="false" /> </c:if>
                                <c:if test="${fuelType eq 'Diesel'}"> <c:set var="containsDiesel" value="false" /> </c:if>
                                <c:if test="${fuelType eq 'Hybryd'}"> <c:set var="containsHybryd" value="false" /> </c:if>

                            </c:forEach>
                            <label class="checkbox"><input type="checkbox" name="checkbox" <c:if test="${containsPetrol}"> checked="" </c:if>
                                                           onclick="insertParam('fuel_type','Petrol');"><i></i>Petrol</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox" <c:if test="${containsDiesel}"> checked="" </c:if>
                                                           onclick="insertParam('fuel_type','Diesel');"><i></i>Diesel</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox" <c:if test="${containsHybryd}"> checked="" </c:if>
                                                           onclick="insertParam('fuel_type','Hybryd');"><i></i>Hybryd</label>
                            <label class="checkbox"><input type="checkbox" name="checkbox" <c:if test="${containsLPG}"> checked="" </c:if>
                                                           onclick="insertParam('fuel_type','LPG');"><i></i>LPG</label>
                        </div>
                    </div>
                </section>
                <section class="sky-form">
                    <h4>Power</h4>
                    <div class="row2 scroll-pane">
                        <div class="col col-4">
                            <label>
                                <input placeholder="Min:" type="number" tabindex="3" name="min_power"
                                       id="min_power" min="0" required autofocus <c:if test="${minPower != null}"> value="${minPower}" </c:if>
                                       onchange="insertParam('min_power',getValue('min_power'));">
                            </label>
                            <br>
                            <label>
                                <input placeholder="Max:" type="number" tabindex="3" name="max_power"
                                       id="max_power" min="0" required autofocus <c:if test="${maxPower != null}"> value="${maxPower}" </c:if>
                                       onchange="insertParam('max_power',getValue('max_power'));">
                            </label>
                        </div>
                    </div>
                </section>
                <section class="sky-form">
                    <h4>Kilometerage</h4>
                    <div class="row2 scroll-pane">
                        <div class="col col-4">
                            <label>
                                <input placeholder="Min:" type="number" tabindex="4" name="min_kilometerage"
                                       id="min_kilometerage" min="0" required autofocus <c:if test="${minKilometerage != null}"> value="${minKilometerage}" </c:if>
                                       onchange="insertParam('min_kilometerage',getValue('min_kilometerage'));">
                            </label>
                            <br>
                            <label>
                                <input placeholder="Max:" type="number" tabindex="4" name="max_kilometerage"
                                       id="max_kilometerage" min="0" required autofocus <c:if test="${maxKilometerage != null}"> value="${maxKilometerage}" </c:if>
                                       onchange="insertParam('max_kilometerage',getValue('max_kilometerage'));">
                            </label>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- start content -->
        <div class="col-md-9 w_content">
            <div class="women">
                <a><h4>We found - <span>${fn:length(vehicleList)} vehicles</span></h4></a>
                <ul class="w_nav">
                    <li>Sort :</li>
                    <li><a class="active" onclick="insertParam('sort','newly')">Newly listed</a></li>
                    |
                    <li><a onclick="insertParam('sort','alpha');">Alphabetically</a></li>
                    |
                    <li><a onclick="insertParam('sort','highest');">Highest price</a></li>
                    |
                    <li><a onclick="insertParam('sort','lowest');">Lowest price</a></li>
                    <div class="clear"></div>
                </ul>
                <div class="clearfix"></div>
            </div>
            <!-- grids_of_4 -->
            <c:set var="grindNumber" scope="session" value="${1}"/>
            <c:forEach items="${vehicleList}" var="vehicleListElement">
                <c:if test="${grindNumber%4 == 1}">
                    <div class="grids_of_4 ">
                </c:if>
                <c:choose>
                <c:when test="${vehicleListElement.accepted}">
                    <div class="grid1_of_4" id="grind_<c:out value="${grindNumber}"/>">
                        <div class="content_box"><a
                                href=vehicle<c:out value="${vehicleListElement.vehicleId}"/>>
                            <c:choose>
                                <c:when test="${vehicleListElement.image1==NULL || vehicleListElement.image1==''}">
                                    <img src="<c:url value="/resources/static/images/imageNotFound.png"/>" class="img-responsive" alt=""/>
                                </c:when>
                                <c:otherwise>
                                    <img src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicleListElement.vehicleId}&image=1"/>" class="img-responsive" alt=""/>
                                </c:otherwise>
                            </c:choose>

                        </a>
                            <h4><a href=vehicle<c:out value="${vehicleListElement.vehicleId}"/>>
                                <c:out value="${vehicleListElement.make}"/></a></h4>
                            <p><c:out value="${vehicleListElement.model}"/></p>
                            <div class="grid_1 simpleCart_shelfItem">
                                <div class="item_add"><span class="item_price"><h6><c:out
                                        value="${vehicleListElement.price}"/></h6></span></div>
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="grid1_of_4" id="grind_<c:out value="${grindNumber}"/>">
                        <div class="content_box"><a
                                href=admin/vehicle<c:out value="${vehicleListElement.vehicleId}"/>>
                            <c:choose>
                                <c:when test="${vehicleListElement.image1==NULL || vehicleListElement.image1==''}">
                                    <img src="<c:url value="/resources/static/images/imageNotFound.png"/>" class="img-responsive" alt=""/>
                                </c:when>
                                <c:otherwise>
                                    <img src="<c:url value="/vehicleImage/imageDisplay?vehicleId=${vehicleListElement.vehicleId}&image=1"/>" class="img-responsive" alt=""/>
                                </c:otherwise>
                            </c:choose>

                        </a>
                            <h4><a href=admin/vehicle<c:out value="${vehicleListElement.vehicleId}"/>>
                                <c:out value="${vehicleListElement.make}"/></a></h4>
                            <p><c:out value="${vehicleListElement.model}"/></p>
                            <div class="grid_1 simpleCart_shelfItem">
                                <div class="item_add"><span class="item_price"><h6><c:out
                                        value="${vehicleListElement.price}"/></h6></span></div>
                            </div>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>


                <c:if test="${grindNumber%4 == 0}">
                    <div class="clearfix"></div>
                    </div >
                </c:if>
                <c:set var="grindNumber" scope="session" value="${grindNumber + 1}"/>
            </c:forEach>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- end grids_of_4 -->


</div>
<div class="clearfix"></div>

<!-- end content -->
</div>
</div>


<jsp:include page="footer.jsp"/>
</body>
<script>
    function getValue(id) {
        return document.getElementById(id).value;
    }

    function insertParam(key, value) {
        key = encodeURI(key);
        value = encodeURI(value);
        var canAdd = ["makeList", "modelList", "fuel_type"];
        if (value != '') {
            var kvp = document.location.search.substr(1).split('&');
            if (kvp == '') {
                document.location.search = '?' + key + '=' + value;
            }
            else {

                var i = kvp.length;
                var x;
                while (i--) {
                    x = kvp[i].split('=');
                    if (canAdd.includes(key)) {
                        if (x[0] == key && x[1] == value) {
                            if (i != 0) {
                                kvp.splice(i, i);
                            } else {
                                kvp.shift();
                            }
                            break;
                        }
                    } else {
                        if (x[0] == key) {
                            x[1] = value;
                            kvp[i] = x.join('=');
                            break;
                        }
                    }
                }
                if (i < 0) {
                    kvp[kvp.length] = [key, value].join('=');
                }
                document.location.search = kvp.join('&');
            }
        }
    }
</script>
</html>