<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Enquiry extends CI_Controller {

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
	public function index()
	{
		$this->load->model('DataModel');
		$this->load->view('common/header');
		$staff_id = $this->session->userdata('ID');
		$data['EnquiryDetails'] = $this->DataModel->StaffEnquiryDetails($staff_id);
		$this->load->view('enquiry',$data);
	}

	public function SendEnquiry()
	{
		$data['date'] = date('Y-m-d H:i:s');
		$data['subject'] = $this->input->post('Subject');
		$data['message'] = $this->input->post('Message');
		//$data['remark'] = $this->input->post('Remark');
		//$data['latitude'] = $this->input->post('latitude');
		//$data['longitude'] = $this->input->post('longitude');
		$data['created_by'] = $this->session->userdata('ID');
		$insert =  $this->db->insert('staff_enquiry',$data);
		if($insert)
		{
			$message = $this->session->set_flashdata('message', 'Message sent');
			redirect(base_url('Enquiry/'), 'refresh', $message);

		}

	}
	public function Listing()
	{
		$this->load->model('DataModel');
		$data['visitdealerlist'] = $this->DataModel->meetinglist();
		//print_r($data['meetinglist']);die;
		$this->load->view('common/header');
		$this->load->view('visitdealerList', $data);
	}
	public function DLimit()
  {
		$this->load->model('DataModel');
		$dist_id = $this->input->post('dist_id');
		$distlimit = $this->DataModel->distlimit($dist_id);
		foreach($distlimit as $row){
		}
		$nppLimit = $row['currentNpp'];
		$nbpLimit = $row['currentNbp'];

echo "<div class='col col-md-3'><label for='text-input' class='form-control-label'>NPP Limit | NBP Limit</label></div>
		  <div class='col col-md-3'><input type='text' id='nppLimit' name='nppLimit' value='$nppLimit' placeholder='NPP Limit' class='form-control'></div>
			<div class='col col-md-3'><input type='text' id='nbpLimit' name='nbpLimit' value='$nbpLimit' placeholder='NBP Limit' class='form-control'></div>
			<div class='col col-md-3'><label for='text-input' class='form-control-label'>&nbsp;</label></div>";

}

public function delete($enquiry_id=null)
{
	$this->load->model('DataModel');
	$delete = $this->DataModel->StaffDeleteEnquiry($enquiry_id);
	if($delete){
		$message = $this->session->set_flashdata('message', 'Deleted successfully !');
		redirect(base_url('Enquiry/'), 'refresh');
	}
}

}
