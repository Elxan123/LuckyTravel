<!--HTML + Links-->
<?php $this->load->view("front/includes/header"); ?>
<!--Links-->

<!--Loader-->
<?php $this->load->view("front/includes/loading_effect"); ?>
<!--Loader-->

<!--Navigation bar-->
<?php $this->load->view("front/includes/navbar"); ?>
<!--Navigation bar-->


<!-- INNER-BANNER -->
<div class="inner-banner style-6">
    <img class="center-image" src="<?php echo base_url("public/front/")?>img/detail/bg_2.jpg" alt="">
    <div class="vertical-align">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-8 col-md-offset-2">
                    <ul class="banner-breadcrumb color-white clearfix">
                        <li><a class="link-blue-2" href="#">home</a> /</li>
                        <li><a class="link-blue-2" href="#">tours</a> /</li>
                        <li><a class="link-blue-2" href="#">
                                <?php
                                    $lang = $this->session->userdata("dil");
                                    echo $tour["name_" . $lang]
                                ?>
                            </a>
                        </li>
                    </ul>
                    <h2 class="color-white">
                        <?php
                            $lang = $this->session->userdata("dil");
                            echo $tour["name_" . $lang]
                        ?>
                    </h2>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- DETAIL WRAPPER -->
<div class="detail-wrapper">
    <div class="container">

        <!--Tour Title and price-->
        <div class="detail-header">
            <div class="row">
                <div class="col-xs-12 col-sm-8">
                    <h2 class="detail-title color-dark-2">
                        <?php
                        $lang = $this->session->userdata("dil");
                        echo $tour["name_" . $lang]
                        ?>
                    </h2>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="detail-price color-dark-2"><span class="color-dr-blue" style="margin-top: "> <?php echo $tour["tour_price"]?>$ </span></div>
                </div>
            </div>
        </div>
        <!--Tour Title and price-->



        <div class="row padd-90">
            <div class="col-xs-12 col-md-8">
                <div class="detail-content color-1">

                    <!--Tour Gallery-->
                    <div class="detail-top slider-wth-thumbs style-2">

                        <div class="swiper-container thumbnails-preview" data-autoplay="0" data-loop="1" data-speed="500" data-center="0" data-slides-per-view="1">
                            <div class="swiper-wrapper">


                                <div class="swiper-slide active" data-val="0">
                                    <img  style="height: 421px!important;" class="img-responsive img-full" src="<?php echo base_url("uploads/tours/$tour[img]")?>" alt="">
                                </div>


                                <?php $count = 1;
                                      foreach ($tour_gallery as $item){ ?>

                                          <div class="swiper-slide" data-val="<?php echo $count?>">
                                              <img style="height: 421px!important;" class="img-responsive img-full" src="<?php echo base_url("uploads/tour_gallery/$item[file]")?>" alt="">
                                          </div>

                                <?php $count++; } ?>


                            </div>
                            <div class="pagination pagination-hidden"></div>
                        </div>

                        <div class="swiper-container thumbnails" data-autoplay="0"
                             data-loop="0" data-speed="500" data-center="0"
                             data-slides-per-view="responsive" data-xs-slides="3"
                             data-sm-slides="5" data-md-slides="5" data-lg-slides="5"
                             data-add-slides="5">

                            <div class="swiper-wrapper">

                                <div class="swiper-slide current active" data-val="0">
                                    <img style="height: 84px!important;" class="img-responsive img-full" src="<?php echo base_url("uploads/tours/$tour[img]")?>" alt="">
                                </div>

                                <?php $count = 1;
                                foreach ($tour_gallery as $item){ ?>

                                    <div class="swiper-slide" data-val="<?php echo $count?>">
                                        <img style="height: 84px!important;" class="img-responsive img-full" src="<?php echo base_url("uploads/tour_gallery/$item[file]")?>" alt="">
                                    </div>

                                <?php $count++; } ?>

                            </div>
                            <div class="pagination hidden"></div>
                        </div>
                    </div>
                    <!--Tour Gallery-->


                    <!--Tour Detail-->
                    <div class="detail-content-block">

                        <?php

                            if ($this->session->userdata("dil") == "az"){
                                echo $tour["desc_az"];
                            }
                            elseif ($this->session->userdata("dil") == "en"){
                                echo $tour["desc_en"];
                            }
                            elseif ($this->session->userdata("dil") == "ru"){
                                echo $tour["desc_ru"];
                            }

                        ?>

                    </div>
                    <!--Tour Detail-->

                </div>
            </div>


            <!--Popular Tours and need help-->
            <div class="col-xs-12 col-md-4">
                <div class="right-sidebar">

                    <!--Popular tours-->
                    <div class="popular-tours bg-grey-2">
                        <h4 class="color-dark-2"><?php echo $this->lang->line("popular_tours")?></h4>

                        <?php foreach ($popular_tours as $popular_tour) { ?>
                            <div class="hotel-small style-2 clearfix">
                                <a class="hotel-img black-hover" href="<?php

                                    echo base_url($lang . "/tour/$popular_tour[id]");

                                ?>">
                                    <img class="img-responsive radius-3" src="<?php echo base_url("uploads/tours/$popular_tour[img]")?>" alt="">
                                    <div class="tour-layer delay-1"></div>
                                </a>


                                <div class="hotel-desc">

                                    <!--tour name-->
                                    <h4>
                                        <a href=""><?php echo $popular_tour["name_" . $lang]; ?></a>
                                    </h4>
                                    <!--tour name-->


                                    <!--tour about-->
                                    <div class="hotel-loc">
                                        <?php
                                                if (strlen($popular_tour["desc_". $lang]) > 51){
                                                    echo trim(strip_tags(mb_substr($popular_tour["desc_". $lang], 0, 51) . "..."));
                                                }else{
                                                    echo trim(strip_tags($popular_tour["desc_". $lang]));
                                                }
                                        ?>
                                    </div>
                                    <!--tour about-->

                                </div>
                            </div>
                        <?php }?>


                    </div>
                    <!--Popular tours-->



                    <!--Need Help?-->
                    <div class="help-contact bg-grey-2">
                        <h4 class="color-dark-2"><?php echo $this->lang->line("need_help")?></h4>
                        <p class="color-grey"><?php echo $this->lang->line("need_help_text")?></p>
                        <a class="help-phone color-dark-2 link-dr-blue" href="tel:<?php echo $contact["phone"] ?>"><img src="<?php echo base_url("public/front/")?>img/detail/phone24-dark.png" alt=""><?php echo $contact["phone"]?></a>
                        <a class="help-mail color-dark-2 link-dr-blue" href="mailto:<?php echo $contact["email"] ?>"><img src="<?php echo base_url("public/front/")?>img/detail/letter-dark.png" alt=""><?php echo $contact["email"] ?></a>
                    </div>
                    <!--Need Help?-->

                </div>
            </div>
            <!--Popular Tours and need help-->


        </div>

        <div class="may-interested padd-90">
            <div class="row">
                
                <?php foreach ($last_tours as $item) { ?>
                    <div class="col-mob-12 col-xs-6 col-sm-6 col-md-3">
                        <div class="hotel-item">
                            <div class="radius-top">
                                <img src="<?php echo base_url("uploads/tours/$item[img]")?>" alt="">
                                <div class="price price-s-1">$<?php echo $item["tour_price"]?></div>
                            </div>
                            <div class="title clearfix">
                                <h4><b><?php echo $item["name_" . $lang]?></b></h4>

                                <p class="f-14">
                                    <?php

                                        if (strlen($item["desc_" . $lang]) > 103){
                                            echo mb_substr(strip_tags(trim($item["desc_" . $lang])), 0,  103) . "...";
                                        }else{
                                            echo strip_tags(trim($item["desc_" . $lang]));
                                        }
                                    ?>
                                </p>

                                <a href="<?php

                                echo base_url($lang . "/tour/$item[id]");

                                ?>" class="c-button bg-dr-blue hv-dr-blue-o b-50 fl"><?php echo $this->lang->line("etrafli")?></a>
                            </div>
                        </div>
                    </div>
                <?php }?>

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