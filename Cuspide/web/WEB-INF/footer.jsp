<%-- 
    Document   : footer
    Created on : 15/04/2019, 03:21:19 PM
    Author     : CUSPIDE4
--%>

<footer class="footer">
    <div class="container">

        <!-- Newsletter -->

        <div class="newsletter">
            <div class="row">
                <div class="col">
                    <div class="section_title text-center">
                        <h1>Subscribete para recibir más información</h1>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col text-center">
                    <div class="newsletter_form_container mx-auto">
                        <form action="RecibirCorreos" method="post">
                            <div
                                class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-center">
                                <input name="email" id="newsletter_email" class="newsletter_email" type="email"
                                       placeholder="Correo electrónico" required="required"
                                       data-error="Correo electrónico invalido.">
                                <button id="newsletter_submit" type="submit" name="registroFooter"
                                        class="newsletter_submit_btn trans_300" value="Submit">Subscribirse</button>
                            </div>
                        </form>
                        ${mensaje2}
                    </div>
                </div>
            </div>

        </div>

        <!-- Footer Content -->

        <div class="footer_content" id="contacto">
            <div class="row">

                <!-- Footer Column - About -->
                <div class="col-lg-3 footer_col">

                    <!-- Logo -->
                    <div class="logo_container">
                        <div class="logo text-center">
                            <span>Corporación Cúspide</span>
                        </div>
                    </div>

                    <p class="footer_about_text text-center">Asesoría en sustentabilidad territorial, gestión ambiental 
                        y camnio climático.</p>

                </div>

                <!-- Footer Column - Menu -->

                <div class="col-lg-3 footer_col">
                    <div class="footer_column_title">Menu</div>
                    <div class="footer_column_content">
                        <ul>
                            <li class="footer_list_item"><a href="#inicio">Inicio</a></li>
                            <li class="footer_list_item"><a href="#nosotros">Sobre Nosotros</a></li>
                            <li class="footer_list_item"><a href="#eventos">Eventos</a></li>
                            <li class="footer_list_item"><a href="#servicios">Servicios</a></li>
                            <li class="footer_list_item"><a href="#contacto">Contácto</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Footer Column Map -->
                <div class="col-lg-4 footer_col">
                    <div class="footer_column_title">Mapa</div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.6152384552493!2d-75.28706688573702!3d2.
                            926433155298687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3b747af131f6bf%3A0x17c13dcfe737605b!2sCl.
                            +6+%238-54%2C+Neiva%2C+Huila!5e0!3m2!1sen!2sco!4v1555632772692!5m2!1sen!2sco" width="300" height="300" frameborder="0"
                            style="border:0" allowfullscreen></iframe>
                </div>

                <!-- Footer Column - Contact -->

                <div class="col-lg-2 footer_col">
                    <div class="footer_column_title">Contácto</div>
                    <div class="footer_column_content">
                        <ul>
                            <li class="footer_contact_item">
                                <div class="footer_contact_icon">
                                    <img src="img/placeholder.svg"
                                         alt="https://www.flaticon.com/authors/lucy-g">
                                </div>
                                Cl. 6 #8-54, Neiva, Huila
                            </li>
                            <li class="footer_contact_item">
                                <div class="footer_contact_icon">
                                    <img src="img/phone-call.svg"
                                         alt="https://www.flaticon.com/authors/lucy-g">
                                </div>
                                +57 3005542958
                            </li>
                            <li class="footer_contact_item">
                                <div class="footer_contact_icon">
                                    <img src="img/envelope.svg"
                                         alt="https://www.flaticon.com/authors/lucy-g">
                                </div>info@cuspide.com.co
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

        <!-- Footer Copyright -->

        <div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
            <div class="footer_copyright">
                <span>
                    Copyright &copy;
                    <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                    template is made with by <a target="_blank">Cúspide</a>
            </div>
            <div class="footer_social ml-sm-auto">
                <ul class="menu_social">
                    <li class="menu_social_item"><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
                    <li class="menu_social_item"><a href="https://www.facebook.com/cupside.corp/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                    <li class="menu_social_item"><a href="https://www.youtube.com/channel/UCEG69MHC0GTgxDpRijrttzg" target="_blank"><i class="fab fa-youtube"></i></a></li>
                </ul>
            </div>
        </div>

    </div>
</footer>
