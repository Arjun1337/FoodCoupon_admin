<?php


class CHistory_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }    
   
    public function getChistoryInfo()
    {       
        $this->db->select('c.*, u.name AS username, f.name AS foodname, r.name AS resname')
            ->from('anas_coupon_history as c')
            ->join('anas_user as u', 'c.userid=u.id')            
            ->join('anas_food as f', 'c.foodid=f.id')
            ->join('anas_restaurant as r', 'f.restaurantid=r.id')
            ->order_by('c.id','DESC')
            ;
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        else
            return false;
        
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('anas_coupon_history');        

        if ($this->db->affected_rows())
            return "success";
        else
            return "fail";
    }



}
