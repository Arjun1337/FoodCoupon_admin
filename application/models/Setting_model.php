<?php


class Setting_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
   
    public function getSettingInfo()
    {       
        $this->db->select('*')
            ->from('anas_setting as f');    
            
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->row_array();
        }
        else
            return false;
        
    } 

    public function update($id, $post)
    {               
        $monthly=$post['monthly'];
        $yearly=$post['yearly'];
        $rate=$post['rate'];
        $uinvite=$post['uinvite'];
        $cinvite = $post['cinvite'];
        $cemail = $post['cemail'];
        $cmobile = $post['cmobile'];
          
        $data = array(
            'monthlypay' => $monthly,
            'yearlypay' => $yearly,
            'exchangerate' => $rate,
            'userinvite' => $uinvite,
            'contactmobile' => $cmobile,
            'contactemail' => $cemail
        );
        $this->db->where('id', $id);
        $this->db->update('anas_setting', $data);
        return "ok";
    }
}
