<?php
 class FAQSWebPageCoding extends CI_Controller{
     private $parent_folder = "";
     private $sub_folder = "";

     public function __construct()
     {
         parent::__construct();

         $this->parent_folder = "front";
         $this->sub_folder = "faqs";


        $dil = $this->uri->segment(1);
         if ($dil == ""){
             $dil = "az";
         }
         $this->lang->load($dil, $dil);

         $this->session->set_userdata("dil", $dil);

     }

     public function index()
     {
        $data["faqs"] = $this->Core->get_desc("faqs");

         $this->load->view("$this->parent_folder/$this->sub_folder/whole_page", $data);
     }


 }