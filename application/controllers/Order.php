<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends CI_Controller {

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
		$this->load->helper('string');
		$data['OrderID'] = time() . rand(10*45, 100*98);
		$staff_id = $this->session->userdata('ID');
		$data['distributorlist'] = $this->DataModel->distributorlist();
		$data['ViewOrderStatus'] = $this->DataModel->ViewOrderStatus($staff_id);
		$this->load->view('neworder',$data);
	}

	public function OrderGenerate()
{

		$productList = $this->input->post('productList');
		$Qty = $this->input->post('Qty');
		array_shift($productList);
		array_shift($Qty);
		$cart['Products'] = $productList;
		$cart['Qty'] = $Qty;
		//print_r($cart);die;
		$data['Invoice'] = $this->input->post('Orderid');
		$data['date'] = $this->input->post('date');
		//$data['Billtaxtype'] = $this->input->post('taxType');
		$data['Distributor_id'] = $this->input->post('Distributor');
		$data['login_id'] = $this->session->userdata['ID'];
		$data['ProductType'] = $this->input->post('ProductType');
		//$data['transportType'] = $this->db->escape_str(trim($this->input->post('transportType')));
		if($data['ProductType'] == 'NPP'){
		$data['current_limit']	= $this->input->post('nppLimit');
		}
		if($data['ProductType'] == 'NBP'){
		$data['current_limit']	= $this->input->post('nbpLimit');
		}
		$data['latitude'] = $this->input->post('latitude');
		$data['longitude'] = $this->input->post('longitude');
		if(empty($productList)){
			$message = $this->session->set_flashdata('error', 'Please add atleast 1 product');
			redirect(base_url('Order/'), 'refresh', $message);
		}else{
					$insert =  $this->db->insert('staff_order_request',$data);
					$return = $this->db->insert_id();
					$this->session->set_userdata('invoiceData', $return);
		    //echo $this->db->last_query();die;
				if($insert)
				{
					$message = $this->session->set_flashdata('message', '1 new order request generated');
					redirect(base_url('Order/'), 'refresh', $message);

				}
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
		$limit="";
		if(!empty($dist_id)){
			$distlimit = $this->DataModel->distlimit($dist_id);
			foreach($distlimit as $row){
			}
			$nppLimit = $row['currentNpp'];
			$nbpLimit = $row['currentNbp'];
	$limit= "<div class='col col-md-3'><label for='text-input' class='form-control-label'>NPP Limit | NBP Limit</label></div>
				<div class='col col-md-3'><input type='text' id='nppLimit' name='nppLimit' value='$nppLimit' placeholder='NPP Limit' class='form-control'></div>
				<div class='col col-md-3'><input type='text' id='nbpLimit' name='nbpLimit' value='$nbpLimit' placeholder='NBP Limit' class='form-control'></div>
				<div class='col col-md-3'><label for='text-input' class='form-control-label'>&nbsp;</label></div>";
		echo $limit;
	}else{
		echo $limit;
	}

}
public function getProductList()
{
	$this->load->model('DataModel');
	$ptype = $this->input->post('ptype');
	$productCollection = $this->DataModel->getProductByType($ptype);
	$options = "<option value=''>Select Product</option>";
	foreach($productCollection as $row){
		$ProdID = $row['prod_id'];
		$ProdName = $row['prod_name'];
		$options.="<option value='$ProdID'>$ProdName</option>";
	}


echo 	$options;

}

}
