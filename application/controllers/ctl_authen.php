<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ctl_authen extends CI_Controller {


	public function __construct()
	{
		parent::__construct(); 
		$this->load->model('mdl_authen'); 
		$this->load->library('temp_authen');
		// $this->load->library('session'); 
		date_default_timezone_set('Asia/Bangkok');

	}
	
	public function index()
	{
		
    if($this->session->userdata('id_mmember')==""){
		$this->load->library('temp_authen');
		$this->data['tempheader']=$this->temp_authen->getHeader();
		$this->data['tempfooter']=$this->temp_authen->getFooter();
		$this->load->view('login',$this->data);
		 }else{
		 	redirect('ctl_home/');
		 }

	}


public function checkLogin()
	{

		$rs=$this->mdl_authen->checkdatalogin($_POST['username'], md5($_POST['passwd']));
		
		if ($rs==true) {
			// echo"true";
			$result = $this->mdl_authen->getdatauser($_POST['username']);
			
			 $this->loginSession = array(
				"id_mmember"    => $result->id_mmember,
				"mmember_code"  => $result->mmember_code,
				"mmember_name" 	=> $result->mmember_name,
				"email"   	 	=> $result->email,
				"mposition_name"=> $result->mposition_name,

			); 
			$this->session->set_userdata($this->loginSession);  
		// print_r($this->loginSession);
				echo "<meta charset='UTF-8'>
          <SCRIPT LANGUAGE='JavaScript'>
            window.location.href='".site_url("ctl_home")."';
          </SCRIPT>";
		}else {
		echo "<meta charset='UTF-8'>
          <SCRIPT LANGUAGE='JavaScript'>
            window.alert('ฮ่ามึงเอ้ย')
            window.location.href='".site_url("ctl_authen")."';
          </SCRIPT>";
		}
	}


	public function logout()
	{
		if ( $this->session->userdata("id_mmember") != null )
	    {
			$this->session->unset_userdata("id_mmember");
			$this->session->unset_userdata("mmember_code");
			$this->session->unset_userdata("mmember_name");
			$this->session->unset_userdata("email");
			$this->session->unset_userdata("id_mposition");
			$this->session->unset_userdata("mposition_name");
			
			echo "<meta charset='UTF-8'>
          <SCRIPT LANGUAGE='JavaScript'>
            window.alert('สิไปไส')
            window.location.href='".site_url("ctl_authen")."';
          </SCRIPT>";
	    }else {
	    	redirect('ctl_authen/');
	    }
	}
 }


