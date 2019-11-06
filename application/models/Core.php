<?php
 class Core extends CI_Model{

//==============================================Core ucun lazim olan functionlar========================================

    //  get data asc
    public function get_asc($table_name)
    {
        return $this->db->order_by("id", "ASC")->get($table_name)->result_array();
    }

    //  get data desc
    public function get_desc($table_name)
    {
        return $this->db->order_by("id", "DESC")->get($table_name)->result_array();
    }

    public function get_where_row($where, $table_name)
    {
        return $this->db->where($where)->get($table_name)->row_array();
    }

    public function get_where_result_asc($where, $table_name)
    {
        return $this->db->where($where)->order_by("id", "ASC")->get($table_name)->result_array();
    }

    public function get_where_result_desc($where,$table_name)
    {
        return $this->db->where($where)->order_by("id", "DESC")->get($table_name)->result_array();
    }

    public function add($data, $table_name)
     {
         $this->db->insert($table_name,$data);
     }

    public function update($where, $table_name ,$data)
    {
        $this->db->where($where)->update($table_name ,$data);
    }

    public function delete($where, $table_name)
    {
        return $this->db->where($where)->delete($table_name);
    }

    public function list_fields($table_name)
    {
        return $this->db->list_fields($table_name);
    }


//==============================================Core ucun lazim olan functionlar========================================



 }