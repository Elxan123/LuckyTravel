<!--HTML + Links-->
<?php $this->load->view("front/includes/header"); ?>
<!--Links-->

<!--Loader-->
<?php $this->load->view("front/includes/loading_effect"); ?>
<!--Loader-->

<!--Navigation bar-->
<?php $this->load->view("front/includes/navbar"); ?>
<!--Navigation bar-->



<!-- MAP BLOCK -->
<div class="map-block">
    <div id="map-canvas" class="style-4" data-lat="33.664467" data-lng="-117.601586" data-zoom="10" data-style="2"></div>
    <div class="addresses-block">
        <a data-lat="33.664467" data-lng="-117.601586" data-string="Santa Monica Hotel"></a>
    </div>
</div>

<div class="main-wraper">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                <div class="second-title">
                    <h4 class="subtitle color-dr-blue-2 underline">contact info</h4>
                    <h2>get in touch</h2>
                </div>
            </div>
        </div>
        <div class="contact-row">
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <div class="contact-entry">
                        <img class="contact-icon" src="<?php echo base_url("public/front/")?>img/loc_icon_2_dark.png" alt="">
                        <div class="contact-label color-grey-3">Address:</div>
                        <div class="contact-text color-dark-2">Azerbaijan, Baku</div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="contact-entry">
                        <img class="contact-icon" src="<?php echo base_url("public/front/")?>img/mail_icon_l_dark.png" alt="">
                        <div class="contact-label color-grey-3">Email us:</div>
                        <a class="contact-text color-dark-2 link-dr-blue-2" href="mailto:let’s_travel@world.com">lucky_travel@world.com</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="contact-entry">
                        <img class="contact-icon" src="<?php echo base_url("public/front/")?>img/phone_icon_3_dark.png" alt="">
                        <div class="contact-label color-grey-3">Phone:</div>
                        <a class="contact-text color-dark-2 link-dr-blue-2" href="tel:">+994-55-555-55-55</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="share style-2 clearfix">
            <ul>
                <li class="color-in"><a href="#"><i class="fa fa-linkedin"></i>linkedin</a></li>
                <li class="color-fb"><a href="#"><i class="fa fa-facebook"></i>facebook</a></li>
                <li class="color-tw"><a href="#"><i class="fa fa-twitter"></i>twitter</a></li>
                <li class="color-gg"><a href="#"><i class="fa fa-google-plus"></i>google +</a></li>
                <li class="color-pin"><a href="#"><i class="fa fa-pinterest"></i>pinterest</a></li>
            </ul>
        </div>
    </div>
</div>


<!-- CONTACT-FORM -->
<div class="main-wraper padd-90">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                <div class="second-title">
                    <h4 class="subtitle color-dr-blue-2 underline">contact form</h4>
                    <h2>have a question?</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
                <div class="second-description text-center color-grey-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <form class="contact-form js-contact-form" action="https://demo.nrgthemes.com/projects/travel/mail.php" method="POST" action="#">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6">
                            <div class="input-style-1 type-2 color-2">
                                <input type="text" name="fields[name]" required="" placeholder="Enter your name">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="input-style-1 type-2 color-2">
                                <input type="text" name="fields[email]" required="" placeholder="Enter your email">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="input-style-1 type-2 color-2">
                                <input type="text" name="fields[subject]" required="" placeholder="Enter your surname">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="input-style-1 type-2 color-2">
                                <input type="text" name="fields[subject]" required="" placeholder="Enter your number">
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <textarea class="area-style-1 color-1" name="fields[text]" required="" placeholder="Enter your comment"></textarea>
                            <div class="text-center">
                                <button type="submit" class="c-button bg-dr-blue-2 hv-dr-blue-2-o"><span>submit comment</span></button>
                            </div>
                            <input type="hidden" name="fields[code]" value="56345678safs_">
                        </div>
                    </div>
                </form>
                <div class="ajax-result">
                    <div class="success"></div>
                    <div class="error"></div>
                </div>
                <div class="ajax-loader"></div>
            </div>
        </div>
    </div>
</div>

















<!--Footer-->
<?php $this->load->view("front/includes/footer"); ?>
<!--Footer-->

<!--Scripts-->
<?php $this->load->view("front/includes/scripts"); ?>
<!--Scripts-->
