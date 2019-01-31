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
		$data['distributorlist'] = $this->DataModel->StaffApprovedDistributorlist($staff_id);
		$data['ViewOrderStatus'] = $this->DataModel->ViewOrderStatus($staff_id);
		$data['editData'] = $this->DataModel->NPPgetData();
		$this->load->view('neworder',$data);
	}

public function NewOrder()
{
    $this->load->model('DataModel');
		$productList = $this->input->post('productList');
		$Qty = $this->input->post('Qty');
		//print_r($cart);die;
		$data['Invoice'] = $this->input->post('Orderid');
		$data['date'] = $this->input->post('date');
		//$data['Billtaxtype'] = $this->input->post('taxType');
		$data['Distributor_id'] = $this->input->post('Distributor');
		$data['login_id'] = $this->session->userdata['ID'];
		$data['ProductType'] = $this->input->post('ProductType');
		$data['pay_date'] = date('Y-m-d');
		$data['pay_time'] = date('H:i:s');
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
						$i=0;
						foreach($productList as $product){
							$productDetails = $this->DataModel->getProduct($product);
							$quantitytype = $this->DataModel->getQuantityType($product);
							foreach($productDetails as $productDetail){}
							$cart['invoiceId'] = $return;
							$cart['prod_id'] = $product;
							$cart['prod_name'] = $productDetail['prod_name'];
							$cart['hsn'] = $productDetail['hsn'];
							$cart['batch'] = $productDetail['batch'];
							$cart['mdate'] = $productDetail['mfg'];
							$cart['edate'] = $productDetail['exp'];
							$base_price=""; $psize="";
							if($quantitytype == "Bag"){
								$base_price = $productDetail['bagprice'];
								$psize = $productDetail['size'];
								$bagqty = $productDetail['bagqty'];
								$qty = $bagqty - $Qty[$i];
								//$this->DataModel->bagstockin($qty, $product);
							}
							if($quantitytype == "Case"){
								$base_price = $productDetail['caseprice'];
								$psize = $productDetail['csize'];
								$caseqty = $productDetail['caseqty'];
								$qty = $caseqty - $Qty[$i];
								//$this->DataModel->casestockin($qty, $product);
							}
							if($quantitytype == "Drum"){
								$base_price = $productDetail['drumprice'];
								$psize = $productDetail['dsize'];
								$drumqty = $productDetail['drumqty'];
								$qty = $drumqty - $Qty[$i];
								//$this->DataModel->drumstockin($qty, $product);
							}
							if($quantitytype == "Custom"){
								$base_price = $productDetail['customprice'];
								$psize = "Custom";
								$customqty = $productDetail['customqty'];
								$qty = $customqty - $Qty[$i];
								//$this->DataModel->customstockin($qty, $product);
							}
							$cart['psize'] = $psize;
							$cart['quantity'] = $Qty[$i];
							$cart['quantitytype'] = $quantitytype;
							$cart['base_price'] = $base_price;
							$cart['created_by'] = $this->session->userdata['ID'];
              //print_r($cart); die;
							$insert =  $this->db->insert('staff_addcart',$cart);
							$i++;
						}
						if($insert){
							$message = $this->session->set_flashdata('message', '1 new order request generated');
							redirect(base_url('Order/'), 'refresh', $message);

						}
				}
		}
 }
 public function InvoiceView()
 {
	 $this->load->model('DataModel');
	 //$data['getCategory'] = $this->DataModel->getCategory();
	 $staff_id = $this->session->userdata('ID');
	 $data['editData'] = $this->DataModel->getData();
	 $data['invoice_details'] = $this->DataModel->StaffInvoiceDetails($staff_id);
	 //print_r($data['invoice_details']);die;

	 $this->load->view('common/header');
	 $this->load->view('invoice_view', $data);

 }
	public function DLimit()
  {
		$this->load->model('DataModel');
		$dist_id = $this->input->post('dist_id');
		$limit="";
		if(!empty($dist_id)){
			$distlimit = $this->DataModel->StaffDistLimit($dist_id);
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
public function getOrderDetails()
{
	$this->load->model('DataModel');
	$staff_id = $this->session->userdata('ID');
	$order_id = $this->input->post('order_id');
	$OrderDetails="";
	if(!empty($order_id)){
		$orderdetails = $this->DataModel->getOrderDetailStaff($staff_id,$order_id);
		$cartItems = $this->DataModel->getCartStaff($staff_id,$order_id);
		foreach($orderdetails as $order){
			$paydate = $order['pay_date'];
			$paytime = $order['pay_time'];
			$distributorName = $order['name'];
			$mobileno = $order['number'];
			$ProductType = $order['ProductType'];
		}
		$OrderDetails = "<div class='row form-group'>
		 <div class='col col-md-4'><label for='text-input' class='form-control-label'>Date</label></div>
		 <div class='col-12 col-md-8'><input type='text' id='ordDtae' name='ordDtae' value='$paydate' placeholder='Date' class='form-control' readonly></div>
	 </div>
	 <div class='row form-group'>
			<div class='col col-md-4'><label for='text-input' class='form-control-label'>Time</label></div>
			<div class='col-12 col-md-8'><input type='text' id='ordTime' name='ordTime' value='$paytime' placeholder='Time' class='form-control' readonly></div>
		</div>
	 <div class='row form-group'>
			<div class='col col-md-4'><label for='text-input' class='form-control-label'>Distributor Name</label></div>
			<div class='col-12 col-md-8'><input type='text' id='ordDistributor' name='ordDistributor' value='$distributorName' placeholder='Distributor Name' class='form-control' readonly></div>
		</div>
		<div class='row form-group'>
			 <div class='col col-md-4'><label for='text-input' class='form-control-label'>Mobile No.</label></div>
			 <div class='col-12 col-md-8'><input type='text' id='ordContact' name='ordContact' value='$mobileno' placeholder='Mobile No.' class='form-control' readonly></div>
		 </div>
		 <div class='row form-group'>
				<div class='col col-md-4'><label for='text-input' class='form-control-label'>Product Type</label></div>
				<div class='col-12 col-md-8'><input type='text' id='ordType' name='ordType' value='$ProductType' placeholder='Product Type' class='form-control' readonly></div>
		</div>
		<div class='table-responsive'>
		<table id='example1' class='table table-bordered table-striped'>
					<thead>
						<tr>
						<th>Product Name</th>
						<th>Qty</th>
						</tr>
			</thead>
			<tbody>";
			foreach($cartItems as $row){
				$prod_name = $row['prod_name'];
				$quantity = $row['quantity'];
		  	$OrderDetails .= "<tr class='success'>
				<td>$prod_name</td>
					<td>$quantity</td>
				</tr>";
			}
	$OrderDetails .= "</tbody>
</table >
</div>
<div class='card-footer' style='background-color:#95ecd4;text-align: center;'>
		<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>
</div>";
	echo $OrderDetails;
	}else{
		echo $OrderDetails;
	}
}

	public function getProductList()
	{
			$this->load->model('DataModel');
			$ptype = $this->input->post('ptype');
			$productCollection = $this->DataModel->getProductByType($ptype);
			$options = "<option value=''>Select $ptype Product</option>";
			foreach($productCollection as $row){
					$ProdID = $row['prod_id'];
					$ProdName = $row['prod_name'];
					$bagqty = $row['bagqty'];
					$caseqty = $row['caseqty'];
					$drumqty = $row['drumqty'];
					$customqty = $row['customqty'];
					if(($bagqty <= 0) && ($caseqty <= 0) && ($drumqty <= 0) && ($customqty <= 0)){
							$options.="<option style='background-color: #de7a65;' value='$ProdID'>Stock Not Available | $ProdName</option>";
					}else if(($bagqty <= 0) OR ($caseqty <= 0) OR ($drumqty <= 0) OR ($customqty <= 0)){
						  $options.="<option style='background-color: #de7a65;' value='$ProdID'>$bagqty | $ProdName</option>";
					}
					else{
						$options.="<option value='$ProdID'>$ProdName</option>";
					}
			}
			echo 	$options;
	}
	public function DeleteOrder($order_id=null)
	{
		$this->load->model('DataModel');
		$deletecartbill = $this->DataModel->deletecartbill($order_id);
		$deletebill = $this->DataModel->deletebill($order_id);
		if($deletebill){
			$message = $this->session->set_flashdata('message', 'Order Deleted');
			redirect(base_url('Order/'), 'refresh', $message);
		}
	}
}
