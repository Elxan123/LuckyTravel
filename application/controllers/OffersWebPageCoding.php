<?php
 class OffersWebPageCoding extends CI_Controller{
     private $parent_folder = "";
     private $sub_folder = "";
     private $table_name = "";

     public function __construct()
     {
         parent::__construct();

         $this->parent_folder = "front";
         $this->sub_folder = "offers";
         $this->table_name = "offers";


        $dil = $this->uri->segment(1);
         if ($dil == ""){
             $dil = "az";
         }
         $this->lang->load($dil, $dil);

         $this->session->set_userdata("dil", $dil);

     }

     public function index()
     {
         $data["offers"] = $this->Core->get_desc($this->table_name);
         $data["offers_about"] = $this->Core->get_where_row(array("id" => 1), "offers_about");

         $this->load->view("$this->parent_folder/$this->sub_folder/whole_page", $data);
     }

     public function single($lang, $id)
     {
         $data["offer"] = $this->Core->get_where_row(array("id" => $id), $this->table_name);

         $this->load->view("$this->parent_folder/$this->sub_folder/single_page", $data);

     }


 }