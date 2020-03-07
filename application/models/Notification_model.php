<?php


class Notification_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
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
   
    public function getTokens($id)
    {
        $nowTime=new DateTime();	
	    $expiredate = $nowTime->format("Y-m-d");
	    $tokens=array();
	    
        if($id == "all"){
            $res = $this->db->query("select token from anas_user")->result_array();
        }elseif($id == "premium"){
            $res = $this->db->query("select token from anas_user where startdate <= '$expiredate' AND expiredate >= '$expiredate'")->result_array();
        }elseif($id == "free"){
            $res = $this->db->query("select token from anas_user where startdate <= '' OR expiredate < '$expiredate'")->result_array();
        }
        else{
           $res = $this->db->query("select token from anas_user where id = '$id'")->result_array();
        }
        foreach($res as $token){
            array_push($tokens,$token['token']);
        }
        return $tokens;
        
    }
   
}
