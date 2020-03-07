<?php


class Special_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
   
    public function getFoodNumber()
    {        
        $result = $this->db->get('anas_food');
        return $result->num_rows();
    }

    public function getFoodsInfo()
    {       
        $this->db->select('f.*, r.name AS resname')
            ->from('anas_food as f')
            ->where('f.status','set')
            ->join('anas_restaurant as r', 'f.restaurantid=r.id');
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        else
            return false;
        
    }

    public function select($id)
    {        
        $data = array(
            'status' => "set"
        );

        $this->db->where('id', $id);
        $this->db->update('anas_food', $data);
         if ($this->db->affected_rows())
            return "success";
        else
            return "fail";  
    }
    public function unselect($id)
    {        
        $data = array(
            'status' => "unset"
        );

        $this->db->where('id', $id);
        $this->db->update('anas_food', $data);
        return "success";
    }
}
