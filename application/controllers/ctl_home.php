<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ctl_home extends CI_Controller {


	public function __construct(){
		parent::__construct();  
		$this->load->library('template'); 

	}
	
	public function index()
	{
		$this->data['tempheader']=$this->template->getHeader();
		$this->load->view('home',$this->data);
		$this->data['tempfooter']=$this->template->getFooter();
	}
}
