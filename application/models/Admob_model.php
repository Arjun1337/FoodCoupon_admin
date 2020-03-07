<?php


class Admob_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function getAdmob()
    {
        $query = $this->db->select('*')
                    ->from('anas_admob')                    
                    ->get();
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        else
            return false;
    } 
    public function updateadmob($id, $filename)
    {
        $data = array(
            'image' => $filename            
        );
        $this->db->where('id', $id);
        $this->db->update('anas_admob', $data);
        return "ok";
    }    
}
