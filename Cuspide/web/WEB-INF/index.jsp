<%-- 
    Document   : index
    Created on : 15/04/2019, 02:58:33 PM
    Author     : CUSPIDE4
--%>

<%@page import="javaBean.Evento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cad.EventoCad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Course</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Course Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@include file="../WEB-INF/css.jsp" %>
    </head>

    <body>
        <div class="super_container">

            <!-- Header -->
            <%@include file="../WEB-INF/menu.jsp" %>

            <!-- Menu -->
            <%@include file="../WEB-INF/menuResponsivo.jsp" %>  

            <!-- Home -->
            <div class="home" id="inicio">
                <!-- Hero Slider -->
                <div class="hero_slider_container">
                    <div class="hero_slider owl-carousel">

                        <!-- Hero Slide -->
                        <div class="hero_slide">
                            <div class="hero_slide_background" style="background-image:url(img/imagen.JPG)">
                            </div>
                            <div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">

                            </div>
                        </div>

                        <!-- Hero Slide -->
                        <div class="hero_slide">
                            <div class="hero_slide_background" style="background-image:url(img/imagen2.JPG)">
                            </div>
                            <div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">

                            </div>
                        </div>

                        <!-- Hero Slide -->
                        <div class="hero_slide">
                            <div class="hero_slide_background" style="background-image:url(img/imagen3.JPG)">
                            </div>
                            <div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">

                            </div>
                        </div>

                    </div>

                    <div class="hero_slider_left hero_slider_nav trans_200"><span class="trans_200">anterior</span></div>
                    <div class="hero_slider_right hero_slider_nav trans_200"><span class="trans_200">siguiente</span></div>
                </div>

            </div>

            <div class="hero_boxes">
                <div class="hero_boxes_inner">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-4 hero_box_col">
                                <div class="hero_box d-flex flex-row align-items-center justify-content-start">
                                    <img src="img/travel.png" class="svg" alt="">
                                    <div class="hero_box_content">
                                        <h2 class="hero_box_title">Cúspide travel</h2>
                                        <a href="courses.html" class="hero_box_link">Ver más</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 hero_box_col">
                                <div class="hero_box d-flex flex-row align-items-center justify-content-start">
                                    <img src="img/estereo.png" class="svg" alt="">
                                    <div class="hero_box_content">
                                        <h2 class="hero_box_title">Cúspide estereo</h2>
                                        <a href="courses.html" class="hero_box_link">Ver más</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 hero_box_col">
                                <div class="hero_box d-flex flex-row align-items-center justify-content-start">
                                    <img src="img/logo.png" class="svg" alt="">
                                    <div class="hero_box_content">
                                        <h2 class="hero_box_title">Cúspide fraternidad</h2>
                                        <a href="teachers.html" class="hero_box_link">Ver más</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Events -->

            <div class="events page_section" id="eventos">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section_title text-center">
                                <h1>Eventos</h1>
                            </div>
                        </div>
                    </div>
                    <div class="event_items">
                        <!-- Event Item -->
                        <%
                            int pagina = 0;//página a mostrar

                            if (request.getParameter("pagina") == null) {
                                pagina = 1;
                            } else {
                                pagina = Integer.valueOf(request.getParameter("pagina"));
                            }

                            ArrayList<Evento> eventos = EventoCad.listarEventos(pagina, 3);

                            for (Evento e : eventos) {
                        %>

                        <div class="row event_item">
                            <div class="col">
                                <div class="row d-flex flex-row align-items-end">

                                    <div class="col-lg-2 order-lg-1 order-2">
                                        <div class="event_date d-flex flex-column align-items-center justify-content-center">
                                            <div class="event_day"><%=e.getDia()%></div>
                                            <div class="event_month"><%= e.getMes()%></div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 order-lg-2 order-3">
                                        <div class="event_content">
                                            <div class="event_name">
                                                <a class="trans_200" href="#"><%= e.getNombre()%></a>
                                            </div>
                                            <div class="event_location">
                                                <%= e.getLugar()%>
                                            </div>
                                            <p><%= e.getDescripcion()%></p>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 order-lg-3 order-1">
                                        <div class="event_image">
                                            <img src="img/evento.jpg" alt="">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <% } %>

                    </div>

                    <!-- Paginación -->        
                    <br><br><nav>
                        <ul class="pagination">

                            <%
                                if (pagina != 1) {
                            %>

                            <li class="page-danger"><a class="page-link" href="Home?pagina=<%=pagina - 1%>">Anterior</a></li>

                            <%}
                                int inicioPagina = 0;//variable del inicio del arreglo
                                int r = (pagina - 1) % 10;
                                int numeroPagina = EventoCad.contarfilas();//n'umero de registros
                                int cantidadPagina = (numeroPagina / 3);//número de páginas a mostrar

                                //calcular el inicio del arreglo
                                if (r == 0) {
                                    inicioPagina = pagina - 1;//inicia desde 0 y ya va de 10 en 10  
                                } else {
                                    inicioPagina = ((pagina - 1) / 10) * 10;
                                }

                                for (int i = inicioPagina; i < 10 + inicioPagina; i++) {//muestra de 10 en 10 la paginación

                                    if (pagina == i + 1) {
                            %>

                            <li class="page-item active" aria-current="page">

                                <%      }
                                    if (i <= cantidadPagina) {
                                %>

                                <a class="page-link" href="Home?pagina=<%=i + 1%>"><%=i + 1%></a>
                            </li>

                            <%
                                    }
                                }
                                if (pagina <= cantidadPagina) {
                            %>

                            <li class="page-item"><a class="page-link" href="Home?pagina=<%=pagina + 1%>">Siguiente</a></li>
                                <%  }%>

                        </ul>
                    </nav>    
                </div>
            </div>

            <!-- Register -->
                                        
            <div class="register">

                <div class="container-fluid">

                    <div class="row row-eq-height">
                        <div class="col-lg-6 nopadding">

                            <!-- Register -->

                            <div class="register_section d-flex flex-column align-items-center justify-content-center">
                                <div class="register_content text-center">
                                    <h2 class="search_title">Trabajamos por el medio ambiente, las comunidades y la educación ambiental innovadora.</h2>
                                    <br><br>
                                    <iframe width="350" height="250" src="https://www.youtube.com/embed/k-K9tfQro7E"
                                            frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen></iframe>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-6 nopadding">

                            <!-- Search -->

                            <div class="search_section d-flex flex-column align-items-center justify-content-center">
                                <div class="search_content text-center">
                                    <h1 class="search_title">Suscríbete para recibir más información</h1>
                                    <form id="search_form" class="search_form" action="RecibirCorreos" method="post">
                                        <input name="email" id="search_form_name" class="input_field search_form_name" type="email"
                                               placeholder="Correo electrónico" required="required"
                                               data-error="El correo electrónico es obligatorio.">
                                        ${mensaje}
                                        <button id="search_submit_button" type="submit"
                                                class="search_submit_button trans_200" value="Enviar">Suscribirme</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Services -->

            <div class="services page_section" id="servicios">

                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section_title text-center">
                                <h1>Nuestros Servicios</h1>
                            </div>
                        </div>
                    </div>

                    <div class="row services_row">

                        <div
                            class="col-lg-6 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/earth-globe.svg" alt="">
                            </div>
                            <h3><a href="*" class="text-dark">Sustentabilidad Territorial (Corporación Cúspide)</a></h3>
                            <p>Asesoría en sustentabilidad territorial, gestión ambiental y cambio climático. El fundamento
                                de nuestra organización esta en la construcción y fomento de un equilibrío entre el ser humano
                                y su experiencia con la naturaleza y su ser espiritual.</p>
                        </div>

                        <div
                            class="col-lg-6 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/exam.svg" alt="">
                            </div>
                            <h3><a href="*" class="text-dark">Turismo Educativo (Cúspide Travel)</a></h3>
                            <p>Salidas de campo, con enfoque educativo, práctico, lúdico, experiencial donde se puede disfrutar de
                                los principales ecosistemas del Departamento del Huila y del Territorio Colombiano.</p>
                        </div>

                        <div
                            class="col-lg-6 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/books.svg" alt="">
                            </div>
                            <h3><a href="*" class="text-dark">Red Ambiental (Cúspide Estéreo)</a></h3>
                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel
                                nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                        </div>

                        <div
                            class="col-lg-6 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/professor.svg" alt="">
                            </div>
                            <h3><a href="*" class="text-dark">Responsabilidad Social y Ambiental (Fraternidad Sostenible)</a></h3>
                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel
                                nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <%@include file="../WEB-INF/footer.jsp" %>
        </div>
        <%@include file="../WEB-INF/js.jsp" %>
    </body>
</html>
