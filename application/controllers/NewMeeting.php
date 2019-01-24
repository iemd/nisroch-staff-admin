<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class NewMeeting extends CI_Controller {

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
		$this->load->view('common/header');
		//$this->load->helper('date_helper');
		$this->load->view('newmeeting');
	}

	public function CreateMeeting()
	{

		$data['meeting_date'] = date('Y-m-d H:i:s');
		$data['person_name'] = $this->input->post('nameofperson');
		$data['business_name'] = $this->input->post('nameofbusiness');
		$data['contact'] = $this->input->post('contact');
		$data['addr_city'] = $this->input->post('City');
		$data['addr_dist'] = $this->input->post('District');
		$data['addr_pin'] = $this->input->post('Pincode');
		$data['concern'] = $this->input->post('Concern');
		$data['remark'] = $this->input->post('Remark');
		$data['followup_time'] = $this->input->post('followuptime');
		$data['followup_date'] = $this->input->post('followupdate');
		$data['latitude'] = $this->input->post('latitude');
		$data['longitude'] = $this->input->post('longitude');
		$data['status'] = $this->input->post('status');
		$data['created_by'] = $this->session->userdata('ID');
		$insert =  $this->db->insert('staff_meeting',$data);
		if($insert)
		{
			$message = $this->session->set_flashdata('message', '1 new Meeting successfully created');
			redirect(base_url('NewMeeting/'), 'refresh', $message);

		}

	}
	public function Listing()
	{
		$staff_id = $this->session->userdata('ID');
		$this->load->model('DataModel');
		$data['meetinglist'] = $this->DataModel->StaffMeetingList($staff_id);
		//print_r($data['meetinglist']);die;
		$this->load->view('common/header');
		$this->load->view('meetingList', $data);
	}

	public function editMeeting($meet_id=null)
	{
		$this->load->model('DataModel');
		$data['editmeeting'] = $this->DataModel->StaffEditMeeting($meet_id);
		//print_r($data['editmeeting']);die;
		$this->load->view('common/header');
		$this->load->view('editmeeting', $data);
	}

	public function UpdateMeeting($meet_id=null)
	{
		$this->load->model('DataModel');
		$data['meeting_date'] = date('Y-m-d H:i:s');
		$data['person_name'] = $this->input->post('nameofperson');
		$data['business_name'] = $this->input->post('nameofbusiness');
		$data['contact'] = $this->input->post('contact');
		$data['addr_city'] = $this->input->post('City');
		$data['addr_dist'] = $this->input->post('District');
		$data['addr_pin'] = $this->input->post('Pincode');
		$data['concern'] = $this->input->post('Concern');
		$data['remark'] = $this->input->post('Remark');
		$data['followup_time'] = $this->input->post('followuptime');
		$data['followup_date'] = $this->input->post('followupdate');
		$data['latitude'] = $this->input->post('latitude');
		$data['longitude'] = $this->input->post('longitude');
		$data['status'] = $this->input->post('status');
		$data['created_by'] = $this->session->userdata('ID');

		$update = $this->DataModel->StaffUpdateMeeting($meet_id, $data);
		if($update){
			$message = $this->session->set_flashdata('message', 'Updated successfully !');
			redirect(base_url('NewMeeting/Listing'), 'refresh');
		}
	}


	public function deleteMeeting($meet_id=null)
	{
		$this->load->model('DataModel');
		$deleteMeeting = $this->DataModel->StaffDeleteMeeting($meet_id);
		if($deleteMeeting){
			$message = $this->session->set_flashdata('message', 'Deleted successfully !');
			redirect(base_url('NewMeeting/Listing'), 'refresh');
		}
	}

}
