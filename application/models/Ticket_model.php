<?php


class Ticket_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
   
    public function getUnreadTicketNumber()
    {   
        $check = "";
        $this->db->select('*')
            ->from('anas_ticket')
            ->where('status', $check);
        $result = $this->db->get();                
        return $result->num_rows();
    }

    public function getTickets()
    {       
        $this->db->select('t.*, u.name AS username')
            ->from('anas_ticket as t')            
            ->join('anas_user as u', 't.userid=u.id')
            ->order_by('t.id','DESC');
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        else
            return false;
        
    }
    public function getTicket($id=0)
    {
        $this->db->select('u.name AS username, u.mobile AS usermobile, u.email AS useremail ,t.*')
            ->from('anas_ticket as t')
            ->join('anas_user as u', 't.userid=u.id')            
            ->where('t.id',$id);
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->row_array();
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
        $this->db->update('anas_ticket', $data);
        return "success";
    }   
    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('anas_ticket');        

        if ($this->db->affected_rows())
            return "success";
        else
            return "fail";
    }
}
