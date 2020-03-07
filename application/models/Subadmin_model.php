<?php


class Subadmin_model extends CI_Model
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

    public function getAdminsInfo()
    {       
        $this->db->select('*')
            ->from('anas_admin')            
            ->where('role', 'user');
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        else
            return false;
        
    }
    
    public function getAdminInfo($userid)
    {       
        $this->db->select('*')
            ->from('anas_admin')            
            ->where('id', $userid);
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->row_array();
        }
        else
            return false;
        
    }
    
    public function update($postData)
    {
        $data = array(
            'user_name' => $postData['username'],
            'email' => $postData['email'],
            'full_name'=> $postData['fullname'],
            'phone_number' => $postData['phone_number'],
            'edituser' => $postData['edituser'],
            'addrestaurant' => $postData['addres'],
            'editrestaurant' => $postData['editres'],
            'addfood' => $postData['addfood'],
            'editfood' => $postData['editfood'],
            'addspecialoffer' =>$postData['addspecial']
        );
        // print_r($reg_data);
        $this->db->where('id', $postData['userid']);
        $this->db->update('anas_admin', $data);

        if ($this->db->affected_rows())
            return "ok";
        else
            return "fail";
             
    }

    public function select($id)
    {        
        $data = array(
            'allow_status' => "1"
        );

        $this->db->where('id', $id);
        $this->db->update('anas_admin', $data);
        return "success";
    }
    public function unselect($id)
    {        
        $data = array(
            'allow_status' => "0"
        );
        $this->db->where('id', $id);
        $this->db->update('anas_admin', $data);
        return "success";
    }
}
