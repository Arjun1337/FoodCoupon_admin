<?php


class Payment_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function getUsersWallet($user_id)
    {
        $this->db->select('wallet')
            ->from('anas_user')            
            ->where('id',$user_id);
        $query = $this->db->get();

        if ($query->num_rows()>0) {
            return $query->row_array();
        }
        else
            return false;
    }
    public function getBillingHistory()
    {       
        $this->db->select('b.*, u.name AS username')
            ->from('anas_billing as b')
            ->join('anas_user as u', 'b.userid=u.id')
            ->order_by('b.id', 'DESC');
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
   


   
    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('anas_billing');        

        if ($this->db->affected_rows())
            return "success";
        else
            return "fail";
    }
   

    public function update($post)
    {
        $user_id=$post['userid'];    
        $wallet=$post['wallet'];
        $payvalue = $post['payvalue'];
        $user_wallet = $wallet + $payvalue;

        $data = array(
            'wallet' => $user_wallet                
        );
        $this->db->where('id', $user_id);
        $this->db->update('anas_user', $data);

        $nowdate = new DateTime();
        $paydate = $nowdate->format("Y-m-d H:i:s");
        $billing = array(
            'userid' => $user_id,
            'paydate' => $paydate,
            'transaction' => 'Deposite From Local Pay',            
            'amount' => $payvalue,
            'type' => 'income'                
        );       
        $this->db->insert('anas_billing', $billing);
        if ($this->db->affected_rows())
            return "ok";
        else
            return "fail";
    }
}
