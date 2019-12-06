<?php
 class HomeWebPageCoding extends CI_Controller{
     private $parent_folder = "";
     private $sub_folder = "";

     public function __construct()
     {
         parent::__construct();

         $this->parent_folder = "front";
         $this->sub_folder = "home";


        $dil = $this->uri->segment(1);
         if ($dil == ""){
             $dil = "az";
         }
         $this->lang->load($dil, $dil);

         $this->session->set_userdata("dil", $dil);
         $this->load->model('Core');

     }

     public function index()
     {
         $data['mslides'] = $this->Core->get_desc('main_slide');
         $data['tours'] = $this->Core->get_tours('tours');
         $this->load->view("$this->parent_folder/$this->sub_folder/whole_page",$data);
     }


 }