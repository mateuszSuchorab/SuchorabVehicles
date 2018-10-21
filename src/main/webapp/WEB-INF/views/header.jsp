<%-- 
    Document   : header
    Created on : 2018-03-14, 23:07:48
    Author     : Mateusz Suchorab <suchorab.mateusz@gmail.com>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<!-- header -->
<div class="header_bg">
    <div class="container">
        <div class="header">
            <div class="head-t">
                <div class="logo">
                    <a href="${pageContext.request.contextPath}/"><img
                            src="<c:url value="/resources/images/suchorab-vehicles-logo.png"/>"
                            class="img-responsive" alt=""/> </a>
                </div>
                <!-- start header_right -->
                <div class="header_right">
                    <div class="rgt-bottom">

                            <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                                <div class="log">
                                    <div class="login">
                                        <div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
                                            <div id="loginBox">
                                                <form id="loginForm" action="${pageContext.request.contextPath}/login" method="post">
                                                    <fieldset id="body">
                                                        <fieldset>
                                                            <label for="email">Email Address</label>
                                                            <input type="text" name="login_email" id="login_email">
                                                        </fieldset>
                                                        <fieldset>
                                                            <label for="password">Password</label>
                                                            <input type="password" name="login_password"
                                                                   id="login_password">
                                                        </fieldset>
                                                        <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                                                        <div>
                                                            <span clas="brand"><c:out value="${ErrorLogin}"/></span>
                                                        </div>
                                                        <input type="submit" id="login" value="Sign in">
                                                    </fieldset>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg">
                                    <a href="${pageContext.request.contextPath}/register">REGISTER</a>
                                </div>
                            </sec:authorize>
                            <sec:authorize access="!hasRole('ROLE_ANONYMOUS')">
                                <div class="log">
                                    <div class="logout">
                                        <div id="logoutContainer"><a href="<c:url value='/logout' />"
                                                                     id="logoutButton"><span>Logout</span></a>

                                        </div>
                                    </div>
                                </div>
                                <div class="regAccount">
                                    <a >Logged
                                        as: ${loggedInUser.getFirstName()} ${loggedInUser.getLastName()}</a>
                                </div>
                            </sec:authorize>


                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- start header menu -->
            <ul class="megamenu skyblue">
                <li class="active grid"><a class="color1" href="${pageContext.request.contextPath}/">Home</a></li>
                <li class="grid"><a class="color2" href="${pageContext.request.contextPath}/all">All Vehicles</a></li>
                <li class="grid"><a class="color3" href="${pageContext.request.contextPath}/Cars">Cars</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/Volkswagen"><h4>Volkswagen</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Golf">Golf</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Polo">Polo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Passat">Passat</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Tiguan">Tiguan</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Touran">Touran</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Amarok">Amarok</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/Opel"><h4>Opel</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Astra">Astra</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Corsa">Corsa</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Insignia">Insignia</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Adam">Adam</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Zafira">Zafira</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Vectra">Vectra</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/BMW"><h4>BMW</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/320">320</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/318">318</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/520">520</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/X1">X1</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/X3">X3</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/X5">X5</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/Audi"><h4>Audi</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A4">A4</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A3">A3</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A6">A6</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A5">A5</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A1">A1</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A8">A8</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/Ford"><h4>Ford</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Focus">Focus</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Fiesta">Fiesta</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Kuga">Kuga</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Mondeo">Mondeo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/C-Max">C-Max</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Galaxy">Galaxy</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">

                                    <a href="${pageContext.request.contextPath}/Cars/Renault"><h4>Renault</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Megane">Megane</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/"Clio">Clio</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Twingo">Twingo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Scenic">Scenic</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Captur">Captur</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Laguna">Laguna</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col2"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                        </div>
                    </div>
                </li>
                <li><a class="color4" href="${pageContext.request.contextPath}/Motorbikes">Motorbikes</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Yamaha"><h4>Yamaha</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/Drag Star">Drag Star</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/FZ">FZ</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/MT">MT</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/Virago">Virago</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/X-max">X-max</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/YZF">YZF</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Honda"><h4>Honda</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/CB">CB</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/CBF">CBF</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/CBR">CBR</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/CRF">CRF</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/Shadow">Shadow</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/VFR">VFR</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Suzuki"><h4>Suzuki</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/Bandit">Bandit</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/Burgman">Burgman</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/DL">DL</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/GSX-R">GSX-R</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/Intruder">Intruder</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/SV">SV</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/BMW"><h4>BMW</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/F">F</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/GS">GS</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/K">K</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/R">R</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/RT">RT</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/S">S</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki"><h4>Kawasaki</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/ER">ER</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/KLE">KLE</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/VN">VN</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/Vulcan">Vulcan</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/Z">Z</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/ZX">ZX</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson"><h4>Harley-Davidson</h4>
                                    </a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Fat Boy">Fat
                                            Boy</a></li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Heritage">Heritage</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Road King">Road
                                            King</a></li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Softail">Softail</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Sportster">Sportster</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/V-Rod">V-Rod</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col2"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                        </div>
                    </div>
                </li>
                <li><a class="color5" href="${pageContext.request.contextPath}/Trucks">Trucks</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/Scania"><h4>Scania</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Scania/R420">R420</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Scania/R440">R440</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Scania/R450">R450</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/DAF"><h4>DAF</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/DAF/XF 105">XF 105</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/DAF/XF 460">XF 460</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/DAF/XF 480">XF 480</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/Volvo"><h4>Volvo</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Volvo/FH420">FH420</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Volvo/FH440">FH440</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Volvo/FH460">FH460</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/MAN"><h4>MAN</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/MAN/TGX 430">TGX 430</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/MAN/TGX 440">TGX 440</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/MAN/TGX 460">TGX 460</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/Renault"><h4>Renault</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Renault/Premium">Premium</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Renault/Magnum">Magnum</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Renault/T">T</a></li>

                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/Mercedes-Benz"><h4>Mercedes-Benz</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Mercedes-Benz/Actros">Actros</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Mercedes-Benz/Axor">Axor</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col2"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                        </div>
                    </div>
                </li>
                <li><a class="color6" href="${pageContext.request.contextPath}/Vans">Vans</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Mercedes-Benz"><h4>Mercedes-Benz</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Mercedes-Benz/Sprinter">Sprinter</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Mercedes-Benz/Vito">Vito</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Mercedes-Benz/Citan">Citan</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Volkswagen"><h4>Volkswagen</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Volkswagen/Transporter">Transporter</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Volkswagen/Caddy">Caddy</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Volkswagen/Multivan">Multivan</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Renault"><h4>Renault</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Renault/Master">Master</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Renault/Trafic">Trafic</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Renault/Kangoo">Kangoo</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Peugeot"><h4>Peugeot</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Peugeot/Boxer">Boxer</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Peugeot/Partner">Partner</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Peugeot/Bipper">Bipper</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Fiat"><h4>Fiat</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Fiat/Ducato">Ducato</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Fiat/Doblo">Doblo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Fiat/Scudo">Scudo</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Ford"><h4>Ford</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Ford/Transit">Transit</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Ford/Tourneo">Tourneo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Ford/Transit Custom">Transit Custom</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col2"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                        </div>
                    </div>
                </li>

                <li><a class="color7" href="${pageContext.request.contextPath}/Buses">Buses</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Mercedes-Benz"><h4>Mercedes-Benz</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Mercedes-Benz/Tourismo">Tourismo</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Mercedes-Benz/Sprinter XXL">Sprinter
                                            XXL</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Mercedes-Benz/Integro">Integro</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Setra"><h4>Setra</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Setra/S315 UL">S315 UL</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Setra/S415 GT-HD">S415 GT-HD</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Setra/431 DT">431 DT</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/MAN"><h4>MAN</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/MAN/Cobra">Cobra</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/MAN/Lions Star">Lions Star</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/MAN/Marbus">Marbus</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Irisbus"><h4>Irisbus</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Irisbus/Iliade">Iliade</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Irisbus/Ares">Ares</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Irisbus/Ponticelli">Ponticelli</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Iveco"><h4>Iveco</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Iveco/First">First</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Iveco/Daily">Daily</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Iveco/Cuby">Cuby</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Renault"><h4>Renault</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Renault/Iliade">Iliade</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Renault/Ares">Ares</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Renault/Master">Master</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col2"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                            <div class="col1"></div>
                        </div>
                    </div>
                </li>
                <li class="grid"><a class="color8" href="${pageContext.request.contextPath}/newArrivals">New arrivals</a></li>
            </ul>
        </div>
    </div>
</div>
</html>
