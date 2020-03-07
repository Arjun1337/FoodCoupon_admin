<?php


class Coupon_model extends CI_Model
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

    public function getCouponsInfo()
    {       
        $this->db->select('c.id, u.name AS username, f.name AS foodname, r.name AS resname')
            ->from('anas_coupon as c')
            ->join('anas_user as u', 'c.userid=u.id')            
            ->join('anas_food as f', 'c.foodid=f.id')
            ->join('anas_restaurant as r', 'f.restaurantid=r.id')
            ;
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        else
            return false;
        
    }

    public function getUserGroup()
    {
        $this->db->select('*');
        $this->db->order_by('id', 'ASC');
        $result = $this->db->get('anas_user');
        if ($result->num_rows()>0)
            return $result->result_array();
        else
            return false;
    }
    public function getResGroup()
    {
        $this->db->select('*');
        $this->db->order_by('id', 'ASC');
        $result = $this->db->get('anas_restaurant');
        if ($result->num_rows()>0)
            return $result->result_array();
        else
            return false;
    }
    public function getFoodid($res_id)
    {
        $this->db->select('*');
        $this->db->where('restaurantid', $res_id);
        $this->db->order_by('id', 'ASC');

        $result = $this->db->get('anas_food');
        if ($result->num_rows()>0)
            return $result->result_array();
        else
            return false;
    }


    public function getCoupon($id=0)
    {
        $this->db->select('u.name AS username, u.mobile AS usermobile, f.restaurantid AS resid')
            ->from('anas_coupon as c')
            ->join('anas_user as u', 'c.userid=u.id')            
            ->join('anas_food as f', 'c.foodid=f.id')
            ->where('c.id',$id);
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->row_array();
        }
        else
            return false;
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('anas_coupon');        

        if ($this->db->affected_rows())
            return "success";
        else
            return "fail";
    }

     public function insert($post)
    {
        
        $userid=$post['userid'];
        $resid=$post['resid'];
        $foodid=$post['foodid'];         

        $data = array(
            'userid' => $userid,
            'foodid' => $foodid           
        );

        $this->db->insert('anas_coupon', $data);

        if ($this->db->affected_rows())
            return "ok";
        else
            return "fail";
    }

    public function update($id, $post)
    {          
        $foodid=$post['foodid']; 
        $data = array(
            'foodid' => $foodid                
        );

        $this->db->where('id', $id);
        $this->db->update('anas_coupon', $data);

        return "ok";
    }
}
