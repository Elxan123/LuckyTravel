<!--HTML + Links-->
<?php $this->load->view("front/includes/header"); ?>
<!--Links-->

<!--Loader-->
<?php $this->load->view("front/includes/loading_effect"); ?>
<!--Loader-->

<!--Navigation bar-->
<?php $this->load->view("front/includes/navbar"); ?>
<!--Navigation bar-->

<?php $lang = $this->session->userdata("dil")?>

<div class="inner-banner">
    <img class="center-image" src="<?php echo base_url("public/front/")?>img/tour_list/inner_banner_1.jpg" alt="">
    <div class="vertical-align">
        <div class="container">

            <h2 class="color-white"><?php echo $this->lang->line("our_tours") ?></h2>

            <h4 class="color-white"><span><?php echo $total_tours?></span> <?php echo $this->lang->line("tour") ?></h4>
        </div>
    </div>
</div>

<div class="list-wrapper bg-grey-2">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3">
                <div class="sidebar bg-white clearfix">

                    <div class="sidebar-block">
                        <h4 class="sidebar-title color-dark-2"><?php echo $this->lang->line("search") ?></h4>
                        <div class="search-inputs">
                            <div class="form-block clearfix">
                                <div class="input-style-1 b-50 color-3">
                                    <img src="<?php echo base_url("public/front/")?>img/loc_icon_small_grey.png" alt="">
                                    <input type="text" placeholder="<?php echo $this->lang->line("write_tour_name") ?>">
                                </div>
                            </div>
                            <div class="form-block clearfix">
                                <div class="input-style-1 b-50 color-3">
                                    <img src="<?php echo base_url("public/front/")?>img/calendar_icon_grey.png" alt="">
                                    <input type="text" placeholder="<?php echo $this->lang->line("write_tour_date") ?>" class="datepicker">
                                </div>
                            </div>
                        </div>
                        <input type="submit" class="c-button b-40 bg-blue-2 hv-blue-2-o" value="<?php echo $this->lang->line("go_search") ?>">
                    </div>

                    <div class="sidebar-block">
                        <h4 class="sidebar-title color-dark-2"><?php echo $this->lang->line("price_range") ?></h4>
                        <div class="slider-range color-1 clearfix" data-counter="$" data-position="start" data-from="0" data-to="1500" data-min="0" data-max="2000">
                            <div class="range"></div>
                            <input type="text" class="amount-start" readonly value="$0">
                            <input type="text" class="amount-end" readonly value="$1500">
                        </div>
                        <input type="submit" class="c-button b-40 bg-blue-2 hv-blue-2-o" value="<?php echo $this->lang->line("go_search") ?>">
                    </div>
                </div>
            </div>



            <div class="col-xs-12 col-sm-8 col-md-9">


                <div class="list-header clearfix">

                    <!--Price-->
                    <div class="drop-wrap drop-wrap-s-4 color-4 list-sort">
                        <div class="drop">
                            <b><?php echo $this->lang->line("price") ?></b>
                            <a href="#" class="drop-list"><i class="fa fa-angle-down"></i></a>
                            <span>
								    <a href="#"><?php echo $this->lang->line("asc") ?></a>
									<a href="#"><?php echo $this->lang->line("desc") ?></a>
							</span>
                        </div>
                    </div>
                    <!--Price-->


                    <!--Popular-->
                    <div class="drop-wrap drop-wrap-s-4 color-4 list-sort">
                        <div class="drop">
                            <b><?php echo $this->lang->line("popularity") ?></b>
                            <a href="#" class="drop-list"><i class="fa fa-angle-down"></i></a>
                            <span>
								    <a href="#"><?php echo $this->lang->line("asc") ?></a>
									<a href="#"><?php echo $this->lang->line("desc") ?></a>
                            </span>
                        </div>
                    </div>
                    <!--Popular-->


                    <!--view-->
                    <div class="list-view-change">
                        <div class="change-grid color-1 fr"><i class="fa fa-th"></i></div>
                        <div class="change-list color-1 fr active"><i class="fa fa-bars"></i></div>
                        <div class="change-to-label fr color-grey-8"><?php echo $this->lang->line("view") ?>:</div>
                    </div>
                    <!--view-->


                </div>


                <div class="list-content clearfix">
                    <?php foreach ($tours as $item) { ?>
                        <div class="list-item-entry">
                            <div class="hotel-item style-3 bg-white">
                                <div class="table-view">
                                    <div class="radius-top cell-view">
                                        <img style="object-fit: cover" src="<?php echo base_url("uploads/tours/$item[img]")?>" alt="Turun Şəkli">
                                    </div>
                                    <div class="title hotel-middle clearfix cell-view">
                                        <div class="date list-hidden"><?php echo $item["date"]?></div>
                                        <div class="date grid-hidden"><strong><?php echo $item["date"]?></strong></div>
                                        <h4 style="margin-bottom: 10px"><b><a href="<?php

                                                    echo base_url("$lang/tour/$item[id]")

                                                ?>"><?php echo $item["name_" . $lang]?></a></b></h4>

                                        <p class="f-14 grid-hidden">
                                            <?php

                                            if (strlen($item["desc_" . $lang]) > 113){
                                                echo mb_substr(strip_tags(trim($item["desc_" . $lang])), 0,  113) . "...";
                                            }else{
                                                echo strip_tags(trim($item["desc_" . $lang]));
                                            }
                                            ?>
                                        </p>
                                    </div>
                                    <div class="title hotel-right clearfix cell-view">
                                        <div class="hotel-person color-dark-2"><span class="color-blue">$<?php echo $item["tour_price"]?></span></div>
                                        <a class="c-button b-40 bg-blue hv-blue-o grid-hidden" href="<?php

                                        echo base_url("$lang/tour/$item[id]")

                                        ?>">Etrafli</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php }?>
                </div>
                
                <!--pagination-->
                <div class="c_pagination clearfix padd-120">
                        <?php print_r($links); ?>
                </div>
                <!--pagination-->


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