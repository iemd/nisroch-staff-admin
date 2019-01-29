<?php $Loginid = $this->session->userdata('ID');?>
<?php if (!empty($Loginid)){ ?>

  <!-- Header-->
  <div class="content mt-6">
      <div class="animated fadeIn">
      <div class="row">
      <form action="<?php //echo base_url('VisitDealer/CreateVisitDealer/'); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <div class="col-lg-12">

        <div class="card" style="background-color:#95ecd4;">
          <div class="card-header">
            <strong>GENERATE ORDER</strong>
            <!--<h4 style="color:green;"><?php //echo $this->session->flashdata('message'); ?></h4>-->
          </div>
          <div class="card-body card-block">
            <div class="row form-group">
                <!--<div class="col col-md-3"><label for="text-input" class=" form-control-label">Order</label></div>-->
                <div class="col col-md-12">
                  <select name="order" id="order" class="form-control order" required="">
                      <option value="new-order">New Order</option>
                      <option value="order-status">View Order Status</option>
                  </select>
                </div>

            </div>

          </div>
      </div>
    </div>
  </form>
  </div><!-- .animated -->
  </div><!-- .content -->
</div><!-- /#right-panel -->
<!-- Right Panel -->

        <!-- Header-->
        <div class="content mt-6" id="new-ord">
            <div class="animated fadeIn">
            <div class="row">
            <form action="<?php echo base_url('Order/NewOrder/'); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div class="col-lg-12">

              <div class="card" style="background-color:#95ecd4;">
                <div class="card-header">
                  <strong>NEW ORDER</strong>
      						<h4 style="color:green;"><?php echo $this->session->flashdata('message'); ?></h4>
                  <h4 style="color:red;"><?php echo $this->session->flashdata('error'); ?></h4>
                </div>
                <div class="card-body card-block">
                   <div class="row form-group">
                      <div class="col col-md-3"><label for="text-input" class=" form-control-label">OrderID | Date | Time</label></div>
                      <div class="col-12 col-md-3"><input type="text" id="Orderid" name="Orderid" value="<?php echo $OrderID;?>" placeholder="Day" class="form-control" readonly></div>
                      <div class="col-12 col-md-3"><input type="text" id="date" name="date" value="<?php echo date('Y-m-d'); ?>" placeholder="Date" class="form-control" readonly></div>
                      <div class="col-12 col-md-3"><input type="text" id="Time" name="Time" value="<?php echo date('g:i A'); ?>" placeholder="Time" class="form-control" readonly></div>

                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Distributor</label></div>
                        <div class="col-12 col-md-9">
                          <select name="Distributor" id="Distributor" class="form-control abc" required="">
                              <option value="">Select Distributor</option>
                              <?php foreach($distributorlist as $distributorlists){ ?>
      												<option value="<?php echo $distributorlists['dist_id']; ?>"><?php echo $distributorlists['name']; ?> | <?php echo $distributorlists['bcode']; ?></option>
      												<?php } ?>
                          </select>
                        </div>
                      </div>
                    <div class='row form-group' id="limit">



                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Product Type</label></div>
                        <div class="col col-md-5">
                          <select name="ProductType" id="ProductType" class="form-control ptype" required="">
                             <option value="">Select Product Type</option>
                              <option value="NPP">NPP</option>
                              <option value="NBP">NBP</option>
                          </select>
                        </div>
                        <div class="col col-md-4">
                          <button type="button" style="background-color:green"; id="addmore" class="btn btn-primary btn-xs">
          								<i class="fa fa-plus-circle"></i>&nbsp;Add More Products
                          </button>
                        </div>
                    </div>

                    <div id="addMoreProducts" class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class="form-control-label">Select Product</label></div>
                        <div class="col col-md-5">
                          <select name="productList[]" id="productList" class="form-control" required>

                          </select>
                        </div>
                        <div class="col col-md-2"><input type="text" id="Qty" name="Qty[]" maxlength="2" size="4" placeholder="Qty" value="1" class="form-control"></div>
                        <div class="col col-md-2" style="width:30%;" id="delete-btn" ></div>
                    </div>
                    <div class="row form-group">

                        <div class="col col-md-3"><input type="hidden" id="latitude" name="latitude" value="" placeholder="Latitude" class="form-control"></div>
                        <div class="col col-md-3"><input type="hidden" id="longitude" name="longitude" value="" placeholder="Longitude" class="form-control"></div>
                      </div>

                  <div class="card-footer" style="background-color:#95ecd4;">
      								<button type="submit" class="btn btn-primary btn-sm">
      								  <i class="fa fa-dot-circle-o"></i> Submit
      								</button>
      						</div>
                </div>
            </div>
          </div>
        </form>
        </div><!-- .animated -->
        </div><!-- .content -->
    </div><!-- /#right-panel -->
    <!-- Right Panel -->
    <div class="content mt-3" id="ord-status" style="display:none;">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card" style="background-color:#95ecd4;">
                        <div class="card-header">
                            <strong class="card-title">ORDER STATUS</strong>
                        </div>
            <?php //echo $this->session->flashdata('message');  ?>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Sl.No.</th>
                        <th>Order ID</th>
                         <th>Date</th>
                         <th>Status</th>
                        <th>View Invoice</th>
                      </tr>
                    </thead>
                    <tbody>
          <?php foreach($ViewOrderStatus as $row) { ?>
                      <tr>
            <?php //print_r($row);die; ?>
                        <td><?php echo $row['order_id']; ?></td>
                        <td><?php echo $row['Invoice']; ?></td>
                        <td><?php echo $row['date']; ?></td>

                        <td><?php if($row['order_status'] == 1): ?>
                          <button name="approve" class="btn btn-success btn-sm" id="approve">Approved</button>
                        <?php else: ?>
                          <button name="reject" class="btn btn-danger btn-sm" id="cancel">Pending</button>
                        <?php endif; ?>
                        </td>
                          <td>
                            <?php if($row['order_status'] == 1): ?>
                              <a href="<?php //echo base_url('Order/InvoiceView/').$row['order_id']; ?>"><i class="fa fa-eye" style="font-size:24px;"></i></a>
                              <?php else: ?>
                              <a href="<?php //echo base_url('Order/delete/').$row['order_id']; ?>"><i class="fa fa-trash" style="font-size:24px;color:red"></i></a>
                              <?php endif; ?>
                          </td>
                      </tr>
          <?php } ?>

                    </tbody>
                  </table>
                        </div>
                    </div>
                </div>


                </div>
            </div><!-- .animated -->
        </div>

<?php } else { ?>
	 <?php redirect(base_url('AdminPanel')); ?>
<?php } ?>
    <script src="<?php echo base_url('assets/js/vendor/jquery-2.1.4.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/vendor/jquery-ui.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/vendor/jquery.timepicker.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/popper.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/plugins.js')?>"></script>
    <script src="<?php echo base_url('assets/js/main.js')?>"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery("select.order").change(function(){
            var order = jQuery(".order option:selected").val();
    		      //alert(order);
            if(order=='order-status'){
              jQuery("#ord-status").css("display","block");
              jQuery("#new-ord").css("display","none");
            }
            if(order=='new-order'){
              jQuery("#new-ord").css("display","block");
              jQuery("#ord-status").css("display","none");
            }

        });
    });
    </script>
<script>
      jQuery(function($){
        $('#followuptime').timepicker({
          timeFormat: 'h:mm p',
          interval: 30,
          minTime: '10',
          maxTime: '6:00pm',
          //defaultTime: '11',
          startTime: '10:00',
          dynamic: false,
          dropdown: true,
          scrollbar: true
        });
      });
    </script>
    <script>
    jQuery( function() {
      jQuery( "#followupdate" ).datepicker( { dateFormat: 'dd-mm-yy' });
    } );
</script>

<script>
    var lat = document.getElementById("latitude");
    var lng = document.getElementById("longitude");

    function getLocation() {
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
      } else {
        lat.value = 0; //Geolocation is not supported by this browser.
        lng.value = 0; //Geolocation is not supported by this browser.
      }
    }

    function showPosition(position) {
      lat.value = position.coords.latitude;
      lng.value = position.coords.longitude;
    }
    jQuery(function($){
      getLocation();
    });
</script>
<script type="text/javascript">
jQuery(document).ready(function(){
    jQuery("select.abc").change(function(){
        var dist_id = jQuery(".abc option:selected").val();
		//alert(dist_id);
		jQuery.ajax({
				url : "<?php echo site_url('Order/DLimit');?>",
				method : "POST",
				data:'dist_id='+dist_id,
				success: function(data){
					jQuery('#limit').html(data);
					//alert(data);
				}
			});
    });
});
</script>
<script type="text/javascript">
jQuery(document).ready(function(){
    jQuery("select.ptype").change(function(){
        var ptype = jQuery(".ptype option:selected").val();
		//alert(dist_id);
		jQuery.ajax({
				url : "<?php echo site_url('Order/getProductList');?>",
				method : "POST",
				data:'ptype='+ptype,
				success: function(data){
					jQuery('#productList').html(data);
					//alert(data);
				}
			});
    });
});
</script>
<script type="text/javascript">
jQuery(document).ready(function() {
          //var count = 0;
    jQuery("#addmore").click(function() {

          //if (count >= 5) return;
                  var ptype = jQuery("#ProductType").val();

                  if(ptype == ''){
                    alert("Select product type");
                  }
                  else{

                    var clone = jQuery("#addMoreProducts").first().clone();
                    //clone.find("#productList").attr("required","");
                    clone.find("#delete-btn").append("<button type='button' id='delete' class='btn btn-danger btn-xs'><i class='fa fa-trash'></i>&nbsp;Delete</button>");
                    clone.insertAfter("#addMoreProducts").show();

                  }
                 attach_delete();
        //count++;
    });

    function attach_delete(){
      //jQuery('button.btn-danger').off();
      jQuery('button.btn-danger').click(function(){
          //console.log("click");
        jQuery(this).closest("#addMoreProducts").remove();
        });
    }
});
</script>
</body>
</html>
