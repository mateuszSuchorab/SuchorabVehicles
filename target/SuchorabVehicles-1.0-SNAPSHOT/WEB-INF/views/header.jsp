<%-- 
    Document   : header
    Created on : 2018-03-14, 23:07:48
    Author     : Mateusz Suchorab <suchorab.mateusz@gmail.com>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    <a href="index.htm"><img
                            src="<c:url value="/resources/images/suchorab-vehicles-logo.png"/>"
                            class="img-responsive" alt=""/> </a>
                </div>
                <!-- start header_right -->
                <div class="header_right">
                    <div class="rgt-bottom">
                        <c:choose>
                            <c:when test="${empty loggedInUser.getEmail()}">
                                <div class="log">
                                    <div class="login">
                                        <div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
                                            <div id="loginBox">
                                                <form id="loginForm" action="${pageContext.request.contextPath}/login.htm" method="post">
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
                                    <a href="${pageContext.request.contextPath}/register.htm">REGISTER</a>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="log">
                                    <div class="logout">
                                        <div id="logoutContainer"><a href="${pageContext.request.contextPath}/logout.htm"
                                                                     id="logoutButton"><span>Logout</span></a>

                                        </div>
                                    </div>
                                </div>
                                <div class="regAccount">
                                    <a href="${pageContext.request.contextPath}/userAccount.htm">Logged
                                        as: ${loggedInUser.getFirstName()} ${loggedInUser.getLastName()}</a>
                                </div>
                            </c:otherwise>
                        </c:choose>

                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- start header menu -->
            <ul class="megamenu skyblue">
                <li class="active grid"><a class="color1" href="${pageContext.request.contextPath}/index.htm">Home</a></li>
                <li class="grid"><a class="color2" href="${pageContext.request.contextPath}/all.htm">All Vehicles</a></li>
                <li class="grid"><a class="color3" href="${pageContext.request.contextPath}/Cars.htm">Cars</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/Volkswagen.htm"><h4>Volkswagen</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Golf.htm">Golf</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Polo.htm">Polo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Passat.htm">Passat</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Tiguan.htm">Tiguan</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Touran.htm">Touran</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Volkswagen/Amarok.htm">Amarok</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/Opel.htm"><h4>Opel</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Astra.htm">Astra</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Corsa.htm">Corsa</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Insignia.htm">Insignia</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Adam.htm">Adam</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Zafira.htm">Zafira</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Opel/Vectra.htm">Vectra</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/BMW.htm"><h4>BMW</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/320.htm">320</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/318.htm">318</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/520.htm">520</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/X1.htm">X1</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/X3.htm">X3</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/BMW/X5.htm">X5</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/Audi.htm"><h4>Audi</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A4.htm">A4</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A3.htm">A3</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A6.htm">A6</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A5.htm">A5</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A1.htm">A1</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Audi/A8.htm">A8</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Cars/Ford.htm"><h4>Ford</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Focus.htm">Focus</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Fiesta.htm">Fiesta</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Kuga.htm">Kuga</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Mondeo.htm">Mondeo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/C-Max.htm">C-Max</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Ford/Galaxy.htm">Galaxy</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">

                                    <a href="${pageContext.request.contextPath}/Cars/Renault.htm"><h4>Renault</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Megane.htm">Megane</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/"Clio.htm">Clio</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Twingo.htm">Twingo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Scenic.htm">Scenic</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Captur.htm">Captur</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Cars/Renault/Laguna.htm">Laguna</a></li>
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
                <li><a class="color4" href="${pageContext.request.contextPath}/Motorbikes.htm">Motorbikes</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Yamaha.htm"><h4>Yamaha</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/Drag Star.htm">Drag Star</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/FZ.htm">FZ</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/MT.htm">MT</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/Virago.htm">Virago</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/X-max.htm">X-max</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Yamaha/YZF.htm">YZF</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Honda.htm"><h4>Honda</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/CB.htm">CB</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/CBF.htm">CBF</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/CBR.htm">CBR</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/CRF.htm">CRF</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/Shadow.htm">Shadow</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Honda/VFR.htm">VFR</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Suzuki.htm"><h4>Suzuki</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/Bandit.htm">Bandit</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/Burgman.htm">Burgman</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/DL.htm">DL</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/GSX-R.htm">GSX-R</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/Intruder.htm">Intruder</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Suzuki/SV.htm">SV</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/BMW.htm"><h4>BMW</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/F.htm">F</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/GS.htm">GS</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/K.htm">K</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/R.htm">R</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/RT.htm">RT</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/BMW/S.htm">S</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki.htm"><h4>Kawasaki</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/ER.htm">ER</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/KLE.htm">KLE</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/VN.htm">VN</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/Vulcan.htm">Vulcan</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/Z.htm">Z</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Kawasaki/ZX.htm">ZX</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson.htm"><h4>Harley-Davidson</h4>
                                    </a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Fat Boy.htm">Fat
                                            Boy</a></li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Heritage.htm">Heritage</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Road King.htm">Road
                                            King</a></li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Softail.htm">Softail</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/Sportster.htm">Sportster</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Motorbikes/Harley-Davidson/V-Rod.htm">V-Rod</a>
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
                <li><a class="color5" href="${pageContext.request.contextPath}/Trucks.htm">Trucks</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/Scania.htm"><h4>Scania</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Scania/R420.htm">R420</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Scania/R440.htm">R440</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Scania/R450.htm">R450</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/DAF.htm"><h4>DAF</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/DAF/XF 105.htm">XF 105</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/DAF/XF 460.htm">XF 460</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/DAF/XF 480.htm">XF 480</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/Volvo.htm"><h4>Volvo</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Volvo/FH420.htm">FH420</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Volvo/FH440.htm">FH440</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Volvo/FH460.htm">FH460</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/MAN.htm"><h4>MAN</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/MAN/TGX 430.htm">TGX 430</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/MAN/TGX 440.htm">TGX 440</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/MAN/TGX 460.htm">TGX 460</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/Renault.htm"><h4>Renault</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Renault/Premium.htm">Premium</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Renault/Magnum.htm">Magnum</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Renault/T.htm">T</a></li>

                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Trucks/Mercedes-Benz.htm"><h4>Mercedes-Benz</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Mercedes-Benz/Actros.htm">Actros</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Trucks/Mercedes-Benz/Axor.htm">Axor</a></li>
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
                <li><a class="color6" href="${pageContext.request.contextPath}/Vans.htm">Vans</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Mercedes-Benz.htm"><h4>Mercedes-Benz</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Mercedes-Benz/Sprinter.htm">Sprinter</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Mercedes-Benz/Vito.htm">Vito</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Mercedes-Benz/Citan.htm">Citan</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Volkswagen.htm"><h4>Volkswagen</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Volkswagen/Transporter.htm">Transporter</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Volkswagen/Caddy.htm">Caddy</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Volkswagen/Multivan.htm">Multivan</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Renault.htm"><h4>Renault</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Renault/Master.htm">Master</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Renault/Trafic.htm">Trafic</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Renault/Kangoo.htm">Kangoo</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Peugeot.htm"><h4>Peugeot</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Peugeot/Boxer.htm">Boxer</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Peugeot/Partner.htm">Partner</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Peugeot/Bipper.htm">Bipper</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Fiat.htm"><h4>Fiat</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Fiat/Ducato.htm">Ducato</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Fiat/Doblo.htm">Doblo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Fiat/Scudo.htm">Scudo</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Vans/Ford.htm"><h4>Ford</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Ford/Transit.htm">Transit</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Ford/Tourneo.htm">Tourneo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Vans/Ford/Transit Custom.htm">Transit Custom</a>
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

                <li><a class="color7" href="${pageContext.request.contextPath}/Buses.htm">Buses</a>
                    <div class="megapanel">
                        <div class="row">
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Mercedes-Benz.htm"><h4>Mercedes-Benz</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Mercedes-Benz/Tourismo.htm">Tourismo</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Mercedes-Benz/Sprinter XXL.htm">Sprinter
                                            XXL</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Mercedes-Benz/Integro.htm">Integro</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Setra.htm"><h4>Setra</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Setra/S315 UL.htm">S315 UL</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Setra/S415 GT-HD.htm">S415 GT-HD</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Setra/431 DT.htm">431 DT</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/MAN.htm"><h4>MAN</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/MAN/Cobra.htm">Cobra</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/MAN/Lions Star.htm">Lions Star</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/MAN/Marbus.htm">Marbus</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Irisbus.htm"><h4>Irisbus</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Irisbus/Iliade.htm">Iliade</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Irisbus/Ares.htm">Ares</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Irisbus/Ponticelli.htm">Ponticelli</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Iveco.htm"><h4>Iveco</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Iveco/First.htm">First</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Iveco/Daily.htm">Daily</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Iveco/Cuby.htm">Cuby</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col1">
                                <div class="h_nav">
                                    <a href="${pageContext.request.contextPath}/Buses/Renault.htm"><h4>Renault</h4></a>
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Renault/Iliade.htm">Iliade</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Renault/Ares.htm">Ares</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Buses/Renault/Master.htm">Master</a></li>
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
                <li class="grid"><a class="color8" href="${pageContext.request.contextPath}/newArrivals.htm">New arrivals</a></li>
            </ul>
        </div>
    </div>
</div>
</html>
