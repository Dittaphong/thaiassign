<?php 
class mdl_authen extends CI_Model
   {
	public function __construct()
      {
		parent::__construct();
		//$this->load->database("thainology");
      }

      public function checkdatalogin($username, $password)
      { 
         $sql=" 
		SELECT id_mmember
		   FROM mmember 
			WHERE username='" .trim($username). "' AND password= '" .$password."' AND status > 0 ";
  
          $result=$this->db->query($sql);
         if($result->num_rows() > 0)
         {
            return true;
         }
         else
         {
            return false;
         }
      }

 public function getdatauser($username){
	  $sql = "
		SELECT
			a.id_mmember ,
			a.mmember_code,
			a.mmember_name,
			a.mposition_name,
			a.email,
			a.username,
			a.status
		FROM
		member a
	    WHERE  a.username='$username' " ;
   // echo "<pre>".$sql; 
         $query = $this->db->query($sql);
 		 return $query->row(); 
	  }

   }
?>