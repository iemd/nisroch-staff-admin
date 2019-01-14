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
      						<h4 style="color:green;"><?php echo $this->session->flashdata('message'); ?></h4>
                </div>
                <div class="card-body card-block">
                  <div class="row form-group">
                      <div class="col col-md-3"><label for="text-input" class=" form-control-label">Order</label></div>
                      <div class="col-12 col-md-6">
                        <select name="order" id="order" class="form-control" required="">
                            <option value="New Order<">New Order</option>
                            <option value="View Order Status">View Order Status</option>
                        </select>
                      </div>

                  </div>

                  <div class="row form-group">
                      <div class="col col-md-3"><label for="text-input" class=" form-control-label">OrderID/Date/Time</label></div>
                      <div class="col-12 col-md-3"><input type="text" id="Day" name="Day" value="<?php echo $OrderID;?>" placeholder="Day" class="form-control" readonly></div>
                      <div class="col-12 col-md-3"><input type="text" id="dateofmeeting" name="dateofmeeting" value="<?php echo date('d-m-Y'); ?>" placeholder="Date" class="form-control" readonly></div>
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
                        <div class="col-12 col-md-6">
                          <select name="productType" id="order" class="form-control ptype" required="">
                             <option value="">Select Product Type</option>
                              <option value="NPP">NPP</option>
                              <option value="NBP">NBP</option>
                          </select>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Select Product</label></div>
                        <div class="col-12 col-md-6">
                          <select name="productList" id="productList" class="form-control" required="">

                          </select>
                        </div>
                        <div class="col-12 col-md-3"><input type="text" id="qty" name="qty" placeholder="Qty" class="form-control"></div>
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

<?php } else { ?>
	 <?php redirect(base_url('AdminPanel')); ?>
<?php } ?>
    <script src="<?php echo base_url('assets/js/vendor/jquery-2.1.4.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/vendor/jquery-ui.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/vendor/jquery.timepicker.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/popper.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/plugins.js')?>"></script>
    <script src="<?php echo base_url('assets/js/main.js')?>"></script>

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
				url : "<?php echo site_url('GenerateOrder/DLimit');?>",
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
				url : "<?php echo site_url('GenerateOrder/getProductList');?>",
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
</body>
</html>
