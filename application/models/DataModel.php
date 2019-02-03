<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DataModel extends CI_Model
{

		public function getEditUser($prod_id)
			{
				$whereArray = array("prod_id"=>$prod_id);
				$query = $this->db->get_where('products',$whereArray);
				//echo $this->db->last_query();
				return $query->result_array();

			}

		public function bagEditUser($prod_id)
			{
				$whereArray = array("prod_id"=>$prod_id);
				$query = $this->db->get_where('products',$whereArray);
				//echo $this->db->last_query();
				return $query->result_array();

			}
		public function bagstockin($qty, $prod_id)
			{
				$this->db->set('bagqty', $qty);
				$this->db->where('prod_id', $prod_id);
				return $this->db->update('products');
				//echo $this->db->last_query();die;
				/*return $this->db->get('register_form', $data);*/

			}
		public function casestockin($qty, $prod_id)
			{
				$this->db->set('caseqty', $qty);
				$this->db->where('prod_id', $prod_id);
				return $this->db->update('products');
				//echo $this->db->last_query();die;
				/*return $this->db->get('register_form', $data);*/

			}

		public function drumstockin($qty, $prod_id)
			{
				$this->db->set('drumqty', $qty);
				$this->db->where('prod_id', $prod_id);
				return $this->db->update('products');
			}

		public function customstockin($qty, $prod_id)
			{
				$this->db->set('customqty', $qty);
				$this->db->where('prod_id', $prod_id);
				return $this->db->update('products');
				//echo $this->db->last_query();die;
				/*return $this->db->get('register_form', $data);*/

			}

		public function todayinvoicecount($date)
			{

				$whereArray = array("pay_date"=>$date, "payment_status"=>"Done");
				$query = $this->db->get_where('billing',$whereArray);
				//echo $this->db->last_query();
				return $query->result_array();

			}
			public function StaffTodayInvoiceCount($date,$staff_id)
				{
					//$whereArray = array("pay_date"=>$date, "payment_status"=>"Done",'login_id'=>$staff_id);
					$whereArray = array("pay_date"=>$date,'login_id'=>$staff_id);
					$query = $this->db->get_where('staff_order_request',$whereArray);
					//echo $this->db->last_query();
					return $query->result_array();

				}

		public function todayrevenue($date)
			{

				$whereArray = array("pay_date"=>$date, "payment_status"=>"Done");
				$query = $this->db->get_where('billing',$whereArray);
				//echo $this->db->last_query();
				return $query->result_array();

			}

		public function totalrevenue()
			{
				$whereArray = array("payment_status"=>"Done");
				$query = $this->db->get_where('billing',$whereArray);
				//echo $this->db->last_query();
				return $query->result_array();
			}

		public function totalcustomer()
			{
				$this->db->select('*');
				//$this->db->where('prod_name',$product);
				$this->db->from('userregister');
				//$this->db->where('payment_status','Done');
				//$this->db->order_by("ID","desc");
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}

		public function totalgst()
			{
				$whereArray = array("payment_status"=>"Done");
				$query = $this->db->get_where('billing',$whereArray);
				//echo $this->db->last_query();
				return $query->result_array();
			}

		public function adminprofile($login_id)
			{
				$whereArray = array("ID"=>$login_id);
				$query = $this->db->get_where('admin',$whereArray);
				//echo $this->db->last_query();
				return $query->result_array();
			}

		public function totalinvoicecount()
			{
				$this->db->select('*');

				$this->db->from('billing');
				$this->db->where('payment_status',"Done");
				$this->db->order_by("bill_id","asc");
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}
			public function StaffTotalInvoiceCount($staff_id)
				{
					$this->db->select('*');

					$this->db->from('staff_order_request');
					$this->db->where('login_id',$staff_id);
					//$this->db->where('payment_status',"Done");
					$this->db->order_by("order_id","asc");
					$query = $this->db->get();
					//print $this->db->last_query();die;
					$result = $query->result_array();
					return $result;
				}

		public function payment_update($payment, $invoiceId)
			{
				$this->db->where('bill_id', $invoiceId);
				return $this->db->update('billing', $payment);

				/*return $this->db->get('register_form', $data);*/

			}

		public function update_limit($limit, $dist_id)
			{
				$this->db->where('dist_id', $dist_id);
				return $this->db->update('distributor', $limit);

				/*return $this->db->get('register_form', $data);*/

			}

		public function invoicedetails()
			{
				$this->db->select('*');
				//$this->db->where('prod_name',$product);
				$this->db->where('payment_status','Done');
				$this->db->from('billing');
				$this->db->join('distributor', 'distributor.dist_id = billing.Distributor_id', 'full');
				//$this->db->order_by("ID","desc");
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}
			public function StaffInvoiceDetails($staff_id)
				{
					$this->db->select('*');
					//$this->db->where('prod_name',$product);
					//$this->db->where('payment_status','Done');
					$this->db->where('login_id',$staff_id);
					$this->db->from('billing');
					$this->db->join('distributor', 'distributor.dist_id = billing.Distributor_id', 'full');
					//$this->db->order_by("ID","desc");
					$query = $this->db->get();
					//print $this->db->last_query();die;
					$result = $query->result_array();
					return $result;
				}

		public function invoiceprintdetails($bill_id)
			{
				$this->db->select('*');
				$this->db->where('bill_id',$bill_id);
				$this->db->where('payment_status','Done');
				$this->db->from('billing');
				$this->db->join('distributor', 'distributor.dist_id = billing.Distributor_id', 'full');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}
		public function StaffFollowupMeetings($staff_id=null)
		{
			  $this->db->where('created_by',$staff_id);
				$result = $this->db->get("staff_meeting")->result();
				return $result;
		}
		public function getData($prod_id=null)
			{
				$this->db->select('*');
				//$this->db->where('prod_name',$product);
				$this->db->from('products');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}
		public function getProduct($prod_id=null)
		{
				$this->db->select('*');
				$this->db->where('prod_id',$prod_id);
				$this->db->from('products');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
		}
		public function getQuantityType($prod_id=null)
		{
			$this->db->select('*');
			$this->db->where('prod_id',$prod_id);
			$this->db->from('products');
			$query = $this->db->get();
			$result = $query->result_array();
			if(!empty($result)){
	        foreach($result as $row){}
					$bagprice = $row['bagprice'];
					$caseprice = $row['caseprice'];
					$drumprice = $row['drumprice'];
					$customprice = $row['customprice'];

					$bagtype = $row['bagtype'];
					$casetype = $row['casetype'];
					$drumtype = $row['drumtype'];
					$customunit = $row['customunit'];
					if(!empty($bagprice)){
						$qtytype = $bagtype;
					}if(!empty($caseprice)){
						$qtytype = $casetype;
					}
					if(!empty($drumprice)){
						$qtytype = $drumtype;
					}
					if(!empty($customprice)){
						$qtytype = 	$customunit;
					}
			}
			else{
					$qtytype="";
			}
			return $qtytype;
		}
		public function ledger()
			{
				$this->db->select('*');
				//$this->db->where('payment_status','Done');
				$this->db->from('ledger');
				$this->db->join('distributor', 'ledger.dis_id = distributor.dist_id', 'full');
				$this->db->join('billing', 'ledger.billid = billing.bill_id', 'full');
				$this->db->order_by('ledger_id','ASC');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}

		public function ledgerList($dist_id)
			{
				$this->db->select('*');
				$this->db->where('payment_status','Done');
				$this->db->where('bill_id',$dist_id);
				$this->db->from('billing');
				$this->db->join('distributor', 'billing.Distributor_id = distributor.dist_id', 'full');

				$this->db->order_by('bill_id','ASC');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}

		public function debitList($dist_id)
			{
				$this->db->select('*');
				$this->db->where('paymentType','Debit');
				$this->db->where('billid',$dist_id);
				$this->db->from('ledger');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}

		public function NPPgetData($prod_id=null)
			{
				$this->db->select('*');
				$this->db->where('category','NPP');
				$this->db->from('products');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}

		public function NBPgetData($prod_id=null)
			{
				$this->db->select('*');
				$this->db->where('category','NBP');
				$this->db->from('products');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}

		public function StaffDistributorlist($staff_id=null)
			{
				$this->db->select('*');
				$this->db->where('created_by',$staff_id);
				$this->db->from('distributor');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}
			public function StaffApprovedDistributorlist($staff_id=null)
				{
					$this->db->select('*');
					$this->db->where('created_by',$staff_id);
					$this->db->where('status',1);
					$this->db->from('distributor');
					$query = $this->db->get();
					$result = $query->result_array();
					return $result;
				}
			public function distributorlist()
				{
					$this->db->select('*');
					$this->db->from('distributor');
					$query = $this->db->get();
					$result = $query->result_array();
					return $result;
			}

		public function editdistributor($dist_id=null)
			{
				$this->db->select('*');
				$this->db->where('dist_id',$dist_id);
				$this->db->from('distributor');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}
		public function StaffMeetingList($staff_id=null)
		 {
					$this->db->select('*');
					$this->db->where('created_by',$staff_id);
					$this->db->from('staff_meeting');
					$query = $this->db->get();
					$result = $query->result_array();
					return $result;
		 }
		 public function StaffEditMeeting($meet_id=null)
			{
					 $this->db->select('*');
					 $this->db->where('meet_id',$meet_id);
					 $this->db->from('staff_meeting');
					 $query = $this->db->get();
					 $result = $query->result_array();
					 return $result;
			}
		public function StaffUpdateMeeting($meet_id, $data)
		{
					$this->db->where('meet_id', $meet_id);
					return $this->db->update('staff_meeting', $data);

		}
		public function StaffDeleteMeeting($meet_id)
			{
				$whereArray = array("meet_id"=>$meet_id);
				$query = $this->db->delete('staff_meeting',$whereArray);
				if ($query) {
					return true;
				} else {
					return false;
					}
		}
		public function StaffDeleteEnquiry($enquiry_id)
			{
				$whereArray = array("enquiry_id"=>$enquiry_id);
				$query = $this->db->delete('staff_enquiry',$whereArray);
				if ($query) {
					return true;
				} else {
					return false;
					}
		}
		public function StaffEditVisitdealer($visit_id=null)
		 {
					$this->db->select('*');
					$this->db->where('visit_id',$visit_id);
					$this->db->from('staff_visit_dealer');
					$query = $this->db->get();
					$result = $query->result_array();
					return $result;
		 }
	 public function StaffUpdateVisitdealer($visit_id, $data)
	 {
				 $this->db->where('visit_id', $visit_id);
				 return $this->db->update('staff_visit_dealer', $data);

	 }
	 public function StaffDeleteVisitdealer($visit_id)
		 {
			 $whereArray = array("visit_id"=>$visit_id);
			 $query = $this->db->delete('staff_visit_dealer',$whereArray);
			 if ($query) {
				 return true;
			 } else {
				 return false;
				 }
	 }
	 public function StaffEditVisitfarmer($visit_id=null)
		{
				 $this->db->select('*');
				 $this->db->where('visit_id',$visit_id);
				 $this->db->from('staff_visit_farmer');
				 $query = $this->db->get();
				 $result = $query->result_array();
				 return $result;
		}
	public function StaffUpdateVisitfarmer($visit_id, $data)
	{
				$this->db->where('visit_id', $visit_id);
				return $this->db->update('staff_visit_farmer', $data);

	}
	public function StaffDeleteVisitfarmer($visit_id)
		{
			$whereArray = array("visit_id"=>$visit_id);
			$query = $this->db->delete('staff_visit_farmer',$whereArray);
			if ($query) {
				return true;
			} else {
				return false;
				}
	}
	public function StaffEditDistributor($dist_id=null)
	 {
				$this->db->select('*');
				$this->db->where('dist_id',$dist_id);
				$this->db->from('distributor');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
	 }
 public function StaffUpdateDistributor($dist_id, $data)
 {
			 $this->db->where('dist_id', $dist_id);
			 return $this->db->update('distributor', $data);

 }
 public function StaffDeleteDistributor($dist_id)
	 {
		 $whereArray = array("dist_id"=>$dist_id);
		 $query = $this->db->delete('distributor',$whereArray);
		 if ($query) {
			 return true;
		 } else {
			 return false;
			 }
 }
		public function ledgerprint($bill_id=null)
			{
				$this->db->select('*');
				$this->db->where('billid',$bill_id);
				$this->db->from('ledger');
				$this->db->join('billing', 'ledger.billid = billing.bill_id', 'full');
				$this->db->join('distributor', 'billing.Distributor_id = distributor.dist_id', 'full');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}

		public function allledgerprint($dis_id=null)
			{
				$this->db->select('*');
				$this->db->where('dis_id',$dis_id);
				$this->db->from('ledger');
				$this->db->join('billing', 'ledger.billid = billing.bill_id', 'full');
				$this->db->join('distributor', 'billing.Distributor_id = distributor.dist_id', 'full');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}

		public function ledgerprints($bill_id=null)
			{
				$this->db->select('*');
				$this->db->where('bill_id',$bill_id);
				$this->db->from('billing');
				$this->db->join('distributor', 'billing.Distributor_id = distributor.dist_id', 'full');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}

		public function updateCreditDist($Distributor_id, $data)
			{
				$this->db->where('dist_id', $Distributor_id);
				return $this->db->update('distributor', $data);

			}

		public function updatebillCredit($bill_id, $bill)
			{
				$this->db->where('bill_id', $bill_id);
				return $this->db->update('billing', $bill);

			}

		public function updateled($bill_id, $led)
			{
				$this->db->where('billid', $bill_id);
				$this->db->where('paymentType', 'Debit');
				//echo $this->db->last_query();die;
				return $this->db->update('ledger', $led);

			}

		public function updatedistributor($dist_id, $data)
			{
				$this->db->where('dist_id', $dist_id);
				return $this->db->update('distributor', $data);

			}

		public function deleteDistributor($dist_id)
			{
				$whereArray = array("dist_id"=>$dist_id);
				$query = $this->db->delete('distributor',$whereArray);
				if ($query) {
					return true;
				} else {
					return false;
					}
			}

		public function StaffDetails()
			{
				$this->db->select('*');
				//$this->db->where('type', 'Staff');
				$this->db->from('admin');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}
			public function VisitDealerDetails($staff_id=null)
				{
					$this->db->select('*');
					$this->db->where('created_by', $staff_id);
					$this->db->from('staff_visit_dealer');
					$query = $this->db->get();
					$result = $query->result_array();
					return $result;
				}
			public function VisitFarmerDetails($staff_id=null)
				{
					$this->db->select('*');
					$this->db->where('created_by', $staff_id);
					$this->db->from('staff_visit_farmer');
					$query = $this->db->get();
					$result = $query->result_array();
					return $result;
				}
				public function StaffEnquiryDetails($staff_id=null)
					{
						$this->db->select('*');
						$this->db->where('created_by', $staff_id);
						$this->db->from('staff_enquiry');
						$this->db->order_by("date","desc");
						$query = $this->db->get();
						//print $this->db->last_query();die;
						$result = $query->result_array();
						return $result;
					}
			public function ViewOrderStatus($staff_id=null)
			{
						$this->db->select('*');
						$this->db->where('created_by', $staff_id);
						$this->db->from('billing');
						$query = $this->db->get();
						$result = $query->result_array();
						return $result;
			}
		public function editstaff($staff_id=null)
			{
				$this->db->select('*');
				$this->db->where('ID',$staff_id);
				$this->db->from('admin');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}

		public function updatestaff($staff_id, $data)
			{
				$this->db->where('ID', $staff_id);
				return $this->db->update('admin', $data);

			}

		public function deleteStaff($staff_id)
			{
				$whereArray = array("id"=>$staff_id);
				$query = $this->db->delete('admin',$whereArray);
				if ($query) {
					return true;
				} else {
					return false;
					}
			}

		public function getBillData($product=null)
			{
				$this->db->select('*');
				$this->db->where('prod_id',$product);
				$this->db->from('products');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();
				return $result;
			}

		public function distlimit($dist_id=null)
			{
				$this->db->select('*');
				$this->db->where('dist_id',$dist_id);
				$this->db->from('distributor');
				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}
			public function StaffDistLimit($dist_id=null)
				{
					$this->db->select('*');
					$this->db->where('dist_id',$dist_id);
					$this->db->from('distributor');
					$query = $this->db->get();
					$result = $query->result_array();
					return $result;
			}
			public function getProductByType($ptype=null)
				{
					$this->db->select('*');
					$this->db->where('category',$ptype);
					$this->db->from('products');
					$query = $this->db->get();
					$result = $query->result_array();
					return $result;
				}

		public function getinvoice($bill_id=null)
			{
				$this->db->select('*');

				$this->db->from('billing');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();


				return $result;
			}

		public function getCartStaff($staff_id, $orderId)
			{
				$this->db->select('*');
				$this->db->where('created_by',$staff_id);
				$this->db->where('invoiceId',$orderId);
				$this->db->from('addcart');
				$this->db->join('billing', 'billing.bill_id = addcart.invoiceId');
				$query = $this->db->get();
				//print $this->db->last_query();die;
				$result = $query->result_array();


				return $result;
			}
			public function getOrderDetailStaff($staff_id, $orderId)
				{
					$this->db->select('*');
					//$this->db->where('prod_name',$product);
					//$this->db->where('payment_status','Done');

					$this->db->where('bill_id',$orderId);
					$this->db->where('billing.created_by',$staff_id);
					$this->db->from('billing');
					$this->db->join('distributor', 'distributor.dist_id = billing.Distributor_id', 'full');
					//$this->db->order_by("ID","desc");
					$query = $this->db->get();
					//print $this->db->last_query();die;
					$result = $query->result_array();
					return $result;
				}

		public function gettax($invoiceId=null)
			{
				$this->db->select('Billtaxtype');
				$this->db->where('bill_id',$invoiceId);
				$this->db->from('billing');

				$query = $this->db->get();
				$result = $query->result_array();
				return $result;
			}

		public function emailCheck($email)
			{
				$this->db->where('email',$email);
				$query = $this->db->get('userregister');
				if ($query->num_rows() > 0){
					return true;
					}
					else{
						return false;
					}
				}
				public function adminEmailCheck($email)
				{
						$this->db->where('username',$email);
						$query = $this->db->get('admin');
						if ($query->num_rows() > 0){
							return true;
							}
							else{
								return false;
							}
				}
		public function getCategory($prod_id=null)
			{
				$this->db->select('*');
				$this->db->from('category');

				//$this->db->where('post_status','publish');
				//$this->db->order_by("ID","desc");
				$query = $this->db->get();
				$result = $query->result_array();

				return $result;
			}


		public function shorba($prod_id=null)
			{
				$this->db->select('*');
				$this->db->from('products');

				$this->db->where('category','1');
				$this->db->order_by("prod_id","desc");
				$query = $this->db->get();
				$result = $query->result_array();

				return $result;
			}

		public function starter($prod_id=null)
			{
				$this->db->select('*');
				$this->db->from('products');

				$this->db->where('category','2');
				$this->db->order_by("prod_id","desc");
				$query = $this->db->get();
				$result = $query->result_array();

				return $result;
			}

		public function salads($prod_id=null)
			{
				$this->db->select('*');
				$this->db->from('products');

				$this->db->where('category','3');
				$this->db->order_by("prod_id","desc");
				$query = $this->db->get();
				$result = $query->result_array();

				return $result;
			}


		public function MainCourse($prod_id=null)
			{
				$this->db->select('*');
				$this->db->from('products');

				$this->db->where('category','4');
				$this->db->order_by("prod_id","desc");
				$query = $this->db->get();
				$result = $query->result_array();

				return $result;
			}

		public function RiceRoti($prod_id=null)
			{
				$this->db->select('*');
				$this->db->from('products');

				$this->db->where('category','5');
				$this->db->order_by("prod_id","desc");
				$query = $this->db->get();
				$result = $query->result_array();

				return $result;
			}


		public function ChineseStarter($prod_id=null)
			{
				$this->db->select('*');
				$this->db->from('products');

				$this->db->where('category','6');
				$this->db->order_by("prod_id","desc");
				$query = $this->db->get();
				$result = $query->result_array();

				return $result;
			}

		public function Chinese($prod_id=null)
			{
				$this->db->select('*');
				$this->db->from('products');

				$this->db->where('category','7');
				$this->db->order_by("prod_id","desc");
				$query = $this->db->get();
				$result = $query->result_array();

				return $result;
			}

		public function deleteUser($prod_id)
			{
				//$data = $this->db->get('register_form');
				$whereArray = array("prod_id"=>$prod_id);
				//$query = $this->db->get_where('register_form',$whereArray);
				$query = $this->db->delete('products',$whereArray);
				//$this->db->last_query();
				if ($query) {
					return true;

				} else {
					return false;
					}

			}


		public function deletecart($cart_id)
			{
				//$data = $this->db->get('register_form');
				$whereArray = array("cart_id"=>$cart_id);
				//$query = $this->db->get_where('register_form',$whereArray);
				$query = $this->db->delete('addcart',$whereArray);
				//$this->db->last_query();
				if ($query) {
					return true;

				} else {
					return false;
					}

			}

		public function User($data, $prod_id)
			{
				$this->db->where('prod_id', $prod_id);
				return $this->db->update('products', $data);
				/*return $this->db->get('register_form', $data);*/

			}

		public function authenti($username,$password)
			{
				$array = array("username"=>$username,"password"=>md5($password),"type"=>'Staff');
				$query = $this->db->get_where('staff',$array);
				//echo $this->db->last_query();

				$count = $query->num_rows();
				$result = $query->result_array();
				//print_r($result); die;
				if($count > 0){
					$userdetails = array("ID"=>$result[0]['ID'],'loggedIn'=>true,'type'=>'Staff');
					$this->session->set_userdata($userdetails);
				}else{
					$userdetails = array("ID"=>'','loggedIn'=>false, 'type'=>'');
					$this->session->unset_userdata($userdetails);
				}
				return $count;
			}



		public function Userauth($email,$Password)
			{
				$this->db->select('*');
				$array = array("email"=>$email,"Password"=>$Password);
				$query = $this->db->get_where('userregister',$array);
				//echo $this->db->last_query();die;

				$count = $query->num_rows();
				$result = $query->result_array();
				//print_r($result); die;
				if($count > 0){
					$userdetails = array("id"=>$result[0]['id'],'loggedIn'=>true,'type'=>'Admin');
					$this->session->set_userdata($userdetails);
				}else{
					$userdetails = array("id"=>'','loggedIn'=>false, 'type'=>'');
					$this->session->unset_userdata($userdetails);
				}
				return $count;
			}

		public function loadUserProfile($id)
			{
				$array = array("id"=>$id);
				$query = $this->db->get_where('userregister',$array);
				$result = $query->result_array();
				return $result;
			}

		public function deletecartbill($order_id)
			{
				$whereArray = array("invoiceId"=>$order_id);
				$query = $this->db->delete('addcart',$whereArray);
				if ($query) {
					return true;
				} else {
					return false;
					}
			}

		public function deletebill($order_id)
			{
				$whereArray = array("bill_id"=>$order_id);
				$query = $this->db->delete('billing',$whereArray);
				if ($query) {
					return true;
				} else {
					return false;
					}
			}

}
?>
