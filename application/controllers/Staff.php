<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Staff extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 
	 public function __construct() {
        parent::__construct();
        $this->load->model('Designation_Model');
    }
	 
	public function index()
	{
		$this->load->model('DataModel');
		$data['StaffDetails'] = $this->DataModel->StaffDetails();
		$data['Details'] = $this->Designation_Model->allDesignations();
		//print_r($data['StaffDetails']);
		$this->load->view('common/header');
		$this->load->view('staff',$data);
	}
	
	
	
	public function SaveStaff()
	{
		$this->load->model('DataModel');
		$data['name'] = $this->input->post('name');
		$data['username'] = $this->input->post('email');
		$data['password'] = md5($this->input->post('Password'));
		$data['type'] = "Staff";
		$data['number'] = $this->input->post('number');
		$data['address'] = $this->input->post('address');
        $data['designationid'] = $this->input->post('designationid');
		
		$insert =  $this->db->insert('admin',$data);
		if($insert)
		{
			$message = $this->session->set_flashdata('message', '1 Staff successfully added');
			redirect(base_url('Staff/'), 'refresh', $message);
			
		}
		
	}
	
	
	public function editStaff($staff_id=null)
	{
		$this->load->model('DataModel');
		$data['editstaff'] = $this->DataModel->editstaff($staff_id);
		//print_r($data['editdistributor']);die;
		$this->load->view('common/header');
		$this->load->view('editStaff', $data);
	}
	
	
	
	public function UpdateStaff($staff_id=null)
	{
		$this->load->model('DataModel');
		$data['name'] = $this->input->post('name');
		$data['type'] = $this->input->post('type');
		$data['username'] = $this->input->post('email');
		$password = md5($this->input->post('Password'));
		if($password){
		$data['password'] = $password;
		}
		$data['number'] = $this->input->post('number');
		
		$update = $this->DataModel->updatestaff($staff_id, $data);
		if($update){
			$message = $this->session->set_flashdata('message', 'Updated successfully !');
			redirect(base_url('Staff'), 'refresh');
		}
	}
	
	
	public function deleteDistributor($dist_id=null)
	{
		$this->load->model('DataModel');
		$deleteDistributor = $this->DataModel->deleteDistributor($dist_id);
		if($deleteDistributor){
			$message = $this->session->set_flashdata('message', 'Deleted successfully !');
			redirect(base_url('Distributor/Listing'), 'refresh');
		}
	}
	
	public function deleteStaff($staff_id=null)
	{
		$this->load->model('DataModel');
		$deleteStaff = $this->DataModel->deleteStaff($staff_id);
		if($deleteStaff){
			$message = $this->session->set_flashdata('message', 'Deleted successfully !');
			redirect(base_url('Staff'), 'refresh');
		}
	}
	
	
	
	
	
}
