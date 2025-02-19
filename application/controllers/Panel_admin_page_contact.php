<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Panel_admin_page_contact extends MY_Controller{

    private $view_folder = "";
    private $table_name= "";
    private $upload_path= "";
    private $label_name_and_input_name = "";
    private $update_link = "";
    private $add_link = "";
    private $delete_link = "";
    private $link_for_update_modal = "";
    private $success_link = "";
    private $error_link = "";
    private $get_data_link = "";
    private $input_name_type ="";
    private $field_names ="";
    private $add_update_input_array  ="";
    private $table_file_field_names  ="";


    public function __construct()
    {
        parent::__construct();

//      adminin icindeki papkanin adi
        $this->view_folder = "contact";

//      tablemizin adi
        $this->table_name = "contact";

//      sekilleri ve fayllari yukleyeceyimiz yer meselen: base_url("uploads/teachers/")
        $this->upload_path = "uploads/contact/";

//      eger sekil veya file varsa tablenin hansi fieldinnen adini goturub papkadan silsin
        $this->table_file_field_names = array(
            "phone_img",
            "address_img",
            "email_img",
            "linkedln_img",
            "facebook_img",
            "instagram_img",
            "youtube_img",
            "twitter_img",
            "whatsapp_img",
        );

//==============================================================================================

//      tablemizin fieldlerinin array icinde siralanmasi BU DEYISILMIR!
        $this->field_names = $this->Core->list_fields($this->table_name);

        $this->label_name_and_input_name = array(

            "Adres Az" => "(group1)address_az",
            "Adres En" => "(group1)address_en",
            "Adres Ru" => "(group1)address_ru",
            "Adres Iconu" => "address_img",

            "Telefon" => "phone",
            "Telefon Iconu" => "phone_img",

            "E-poçt" => "email",
            "E-poçt Iconu" => "email_img",

            "Linkedln" => "linkedln",
            "Linkedln Iconu" => "linkedln_img",

            "Facebook" => "facebook",
            "Facebook Iconu" => "facebook_img",

            "Instagram" => "instagram",
            "Instagram Iconu" => "instagram_img",

            "Youtube" => "youtube",
            "Youtube Iconu" => "youtube_img",

            "Twitter" => "twitter",
            "Twitter Iconu" => "twitter_img",

            "Whatsapp" => "whatsapp",
            "Whatsapp Iconu" => "whatsapp_img",




        );

        $this->input_name_type = array(

            "phone" => "text",
            "address_az" => "text",
            "address_en" => "text",
            "address_ru" => "text",
            "email" => "email",
            "linkedln" => "text",
            "facebook" => "text",
            "instagram" => "text",
            "youtube" => "text",
            "twitter" => "text",
            "whatsapp" => "text",

            "phone_img" => "file",
            "address_img" => "file",
            "email_img" => "file",
            "linkedln_img" => "file",
            "facebook_img" => "file",
            "instagram_img" => "file",
            "youtube_img" => "file",
            "twitter_img" => "file",
            "whatsapp_img" => "file",

        );

        $this->add_update_input_array = array(

            "phone" => "phone",
            "address_az" => "address_az",
            "address_en" => "address_en",
            "address_ru" => "address_ru",
            "email" => "email",
            "linkedln" => "linkedln",
            "facebook" => "facebook",
            "instagram" => "instagram",
            "youtube" => "youtube",
            "twitter" => "twitter",
            "whatsapp" => "whatsapp",

            "phone_img" => "(file)phone_img",
            "address_img" => "(file)address_img",
            "email_img" => "(file)email_img",
            "linkedln_img" => "(file)linkedln_img",
            "facebook_img" => "(file)facebook_img",
            "instagram_img" => "(file)instagram_img",
            "youtube_img" => "(file)youtube_img",
            "twitter_img" => "(file)twitter_img",
            "whatsapp_img" => "(file)whatsapp_img",

        );


//==============================================================================================

//      tabledeki melumatlarin update olunduqu link
        $this->update_link                    = base_url("Panel_admin_page_contact/update/");//bunnarin sonuna slash qoymaq vacibdir yoxsa islemez

//      ajaxnan melumatlarin modalin icine getirilmesi
        $this->link_for_update_modal          = base_url("Panel_admin_page_contact/get_data_for_update/");//bunnarin sonuna slash qoymaq vacibdir yoxsa islemez

//      proseslerden her hansi biri ugurla basa catdiqda hansi linke atsin
        $this->success_link                   = base_url("Panel_admin_page_contact/");//bunnarin sonuna slash qoymaq vacibdir yoxsa islemez

//      proseslerden her hansi biri ugurla basa catmadiqda hansi linke atsin
        $this->error_link                     = base_url("Panel_admin_page_contact/");//bunnarin sonuna slash qoymaq vacibdir yoxsa islemez

//      data tablenin icine melumatlarin ajaxnan getirilmesi ucun lazim olan link
        $this->get_data_link                  = base_url("Panel_admin_page_contact/get_data");
    }

    public function index()
    {

        $config["label_name_and_input_name"] = $this->label_name_and_input_name;
        $config["input_name_type"] = $this->input_name_type;
        $config["select_name_and_table_name"] = array();
        $config["update_link"] = $this->update_link;
        $config["add_link"]    = $this->add_link;
        $data["create_modal"] = $this->create_view($config);


        $data["get_data_link"] = $this->get_data_link;
        $data["field_names"] = $this->field_names;
        $data["view_folder"] = $this->view_folder;
        $this->load->view('admin/includes/index', $data);
    }

    public function get_data()
    {

        $config["additional_links"] = array();
        $config["table_name"] = $this->table_name;
        $config["upload_path"] = $this->upload_path;
        $config["delete_link"] = $this->delete_link;
        $config["link_for_update_modal"] = $this->link_for_update_modal;

        $this->data_table($config);

    }

    public function get_data_for_update()
    {
        $id = strip_tags($this->input->post("my_data"));//bu deyisilmir

        $config["where"] = array(
            "id" => $id,
        );
        $config["table_name"] = $this->table_name;
        $config["label_name_and_input_name"] = $this->label_name_and_input_name;
        $config["input_name_type"] = $this->input_name_type;
        $config["select_name_and_table_name"] = array();

        echo $this->update_view($config);

    }

    public function update($id)
    {


        $config["where"]            = array(
            "id" => $id,
        );
        $config["inputs_array"]     = $this->add_update_input_array;
        $config["success_link"]     = $this->success_link;
        $config["error_link"]       = $this->error_link;
        $config["table_name"]       = $this->table_name;
        $config["upload_path"]      = $this->upload_path;

        $this->update_db($config);

    }




}