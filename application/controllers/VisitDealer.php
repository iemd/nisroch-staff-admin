<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class VisitDealer extends CI_Controller {

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
		//$this->load->helper('date_helper');
		$data['distributorlist'] = $this->DataModel->distributorlist();
		$this->load->view('visitdealer',$data);
	}

	public function CreateVisitDealer()
	{
		$data['visit_date'] = date('Y-m-d H:i:s');
		$data['currentNpp'] = $this->input->post('nppLimit');
		$data['currentNbp'] = $this->input->post('nbpLimit');
		$data['remark'] = $this->input->post('Remark');
		$data['followup_time'] = $this->input->post('followuptime');
		$data['followup_date'] = $this->input->post('followupdate');
		$data['latitude'] = $this->input->post('latitude');
		$data['longitude'] = $this->input->post('longitude');
		$data['DistributorID'] = $this->input->post('Distributor');
		$data['created_by'] = $this->session->userdata('ID');
		$insert =  $this->db->insert('staff_visit_dealer',$data);
		if($insert)
		{
			$message = $this->session->set_flashdata('message', '1 visit dealer successfully created');
			redirect(base_url('VisitDealer/'), 'refresh', $message);

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

	/*public function editMeeting($meet_id=null)
	{
		$this->load->model('DataModel');
		$data['editmeeting'] = $this->DataModel->editmeeting($meet_id);
		//print_r($data['editmeeting']);die;
		$this->load->view('common/header');
		$this->load->view('editmeeting', $data);
	}

	public function UpdateMeeting($dist_id=null)
	{
		$this->load->model('DataModel');
		$data['name'] = $this->input->post('name');
		$data['bcode'] = $this->input->post('BuyerCode');
		$data['State'] = $this->input->post('State');
		$data['City'] = $this->input->post('City');
		$data['Pincode'] = $this->input->post('Pincode');
		$data['DAddress'] = $this->input->post('DAddress');
		$data['email'] = $this->input->post('email');
		$data['number'] = $this->input->post('number');
		$data['gst'] = $this->input->post('gst');
		$data['pos'] = $this->input->post('pos');
		$data['Destination'] = $this->input->post('Destination');
		$data['pnumber'] = $this->input->post('pnumber');
		$data['npp'] = $this->input->post('npp');
		$data['nbp'] = $this->input->post('nbp');
		$data['nppLimit'] = $this->input->post('nppLimit');
		$data['nbpLimit'] = $this->input->post('nbpLimit');
		$data['currentNpp'] = $this->input->post('nppLimit');
		$data['currentNbp'] = $this->input->post('nbpLimit');

		$update = $this->DataModel->updatemeeting($meet_id, $data);
		if($update){
			$message = $this->session->set_flashdata('message', 'Updated successfully !');
			redirect(base_url('NewMeeting/Listing'), 'refresh');
		}
	}


	public function deleteMeeting($dist_id=null)
	{
		$this->load->model('DataModel');
		$deleteMeeting = $this->DataModel->deleteMeeting($meet_id);
		if($deleteMeeting){
			$message = $this->session->set_flashdata('message', 'Deleted successfully !');
			redirect(base_url('NewMeeting/Listing'), 'refresh');
		}
	}*/

}
