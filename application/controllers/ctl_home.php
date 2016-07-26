<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ctl_home extends CI_Controller {


	public function __construct(){
		parent::__construct();  
		$this->load->model('mdl_authen');
		$this->load->library('template'); 
		$this->load->library('session');
		if($this->session->userdata('id_mmember')==""){ 
			redirect('ctl_authen/');
		}

	}
	
	public function index()
	{
		$this->data['tempheader']=$this->template->getHeader();		
		$this->data['tempfooter']=$this->template->getFooter();
		$this->load->view('home',$this->data);
	}
}
