<?php
 class ToursWebPageCoding extends CI_Controller{
     private $parent_folder = "";
     private $sub_folder = "";
     private $table_name = "";

     public function __construct()
     {
         parent::__construct();

         $this->parent_folder = "front";
         $this->sub_folder = "tours";
         $this->table_name = "tours";


        $dil = $this->uri->segment(1);
         if ($dil == ""){
             $dil = "az";
         }
         $this->lang->load($dil, $dil);

         $this->session->set_userdata("dil", $dil);

     }


     public function index()
     {

         //--------------pagination start------------
         $this->load->library('pagination');

         $config["base_url"]    = base_url($this->uri->segment(1) . "/tours");
         $config["total_rows"]  = $this->Core->get_counts($this->table_name);
         $config["uri_segment"] = 3;
         $config["per_page"]    = 8;

         $config["num_links"] = 3;
         $config['full_tag_open']    = '<ul class="cp_content color-1">';
         $config['full_tag_close']   = "</ul>";


         $config['first_link'] = '&lt;&lt;';
         $config['first_tag_open'] = '<li class="prev">';
         $config['first_tag_close'] = '</li>';

         $config['last_link'] = '&gt;&gt;';
         $config['last_tag_open'] = '<li >';
         $config['last_tag_close'] = '</li>';

         $config['next_link'] = ' &gt; ';
         $config['next_tag_open'] = '<li class="page-item">';
         $config['next_tag_close'] = '</li>';

         $config['prev_link'] = ' &lt; ';

         $config['prev_tag_open'] = '<li>';
         $config['prev_tag_close'] = '</li>';

         $config['cur_tag_open'] = '<li class="active"><a href="">';
         $config['cur_tag_close'] = '</a></li>';

         $config['num_tag_open'] = '<li>';
         $config['num_tag_close'] = '</li>';

         $this->pagination->initialize($config);

         $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

         $data['tours'] = $this->Core->get_pagination_desc($config["per_page"], $page, $this->table_name);

         $data['links']  = $this->pagination->create_links();
         //--------------pagination end------------

         $data["total_tours"] = $config["total_rows"];

         $this->load->view("$this->parent_folder/$this->sub_folder/whole_page", $data);
     }

     public function single($lang, $id)
     {

//         turun ve qalereyasinin caqirilmasi eger tr yoxdusa ana seyfeye atacaq
         $data["tour"] = $this->Core->get_where_row(array("id" => $id), $this->table_name);
         $data["tour_gallery"] = $this->Core->get_where_result_desc(array("tour_id" => $id), "tour_gallery");
         if (empty($data["tour"])){
             redirect(base_url());
         }else{
//             turun klick sayi bir vahid artir
             $data["tour"]["click_times"]++;
             $this->Core->update(array("id" => $id), $this->table_name, array("click_times" => $data["tour"]["click_times"]));
         }

//         en cox kliklenen 4 tur cagirilir
         $data["popular_tours"] = $this->Core->get_popular_tours($this->table_name);


//         en son yaradilan 4 tur cagirilir
         $data["last_tours"] = $this->Core->get_desc_limit($this->table_name, 4);

//         elaqe ucun melumatlar  cagirilir
         $data["contact"] = $this->Core->get_where_row(array("id" => 1), "contact");

         $this->load->view("$this->parent_folder/$this->sub_folder/single_page",$data);
     }


 }