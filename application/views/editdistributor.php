 <?php $Loginid = $this->session->userdata('ID');?>
 <?php if (!empty($Loginid)){ ?>
  <?php foreach($editdistributor as $row){} ?>
        <!-- Header-->
        <div class="content mt-6">
            <div class="animated fadeIn">
                <div class="row">
                 <form action="<?php echo base_url('Distributor/update/'.$row['dist_id']); ?>" method="post" enctype="multipart/form-data" class="form-horizontal"><form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                  <div class="col-lg-12">
                    <div class="card" style="background-color:#95ecd4;">
                      <div class="card-header">
                        <strong>EDIT DISTRIBUTOR</strong>
						               <h4 style="color:green;"><?php echo $this->session->flashdata('message'); ?></h4>
                      </div>
                      <div class="card-body card-block">
                          <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Name</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="name" value="<?php echo $row['name']; ?>" name="name" placeholder="Distributor Name" class="form-control" required></div>
                      </div>
        						  <div class="row form-group">
                          <div class="col col-md-3"><label for="text-input" class=" form-control-label">Address</label></div>
                          <div class="col-12 col-md-3"><input type="text" id="State" name="State" value="<?php echo $row['State']; ?>" placeholder="State" class="form-control"></div>
        							    <div class="col-12 col-md-3"><input type="text" id="City" name="City" value="<?php echo $row['City']; ?>" placeholder="City" class="form-control"></div>
        							    <div class="col-12 col-md-3"><input type="text" id="Pincode" name="Pincode" value="<?php echo $row['Pincode']; ?>" placeholder="Pincode" class="form-control"></div>
                      </div>
      						  <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class="form-control-label">Delivery Address</label></div>
                        <div class="col-12 col-md-9"><input type="text" id="DAddress" name="DAddress" value="<?php echo $row['DAddress']; ?>" placeholder="Enter Delivery Address" class="form-control"></div>
                    </div>
    						   <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Email Id</label></div>
                        <div class="col-12 col-md-9"><input type="text" id="email" name="email" value="<?php echo $row['email']; ?>" placeholder="Enter Email Id" class="form-control" readonly></div>
                    </div>
    						   <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Contact Number</label></div>
                        <div class="col-12 col-md-9"><input type="number" id="number" name="number" value="<?php echo $row['number']; ?>" placeholder="Contact Number" class="form-control"></div>
                   </div>
						       <div class="row form-group">
                       <div class="col col-md-3"><label for="text-input" class=" form-control-label">GSTIN Number</label></div>
                       <div class="col-12 col-md-9"><input type="text" id="gst" name="gst" value="<?php echo $row['gst']; ?>" placeholder="GST Number" class="form-control"></div>
                   </div>
						       <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Place | Dest | Pl No</label></div>
                        <div class="col-12 col-md-3"><input type="text" id="pos" name="pos" value="<?php echo $row['pos']; ?>" placeholder="Place of Supply" class="form-control"></div>
							          <div class="col-12 col-md-3"><input type="text" id="Destination" name="Destination" value="<?php echo $row['Destination']; ?>" placeholder="Enter Destination" class="form-control"></div>
							          <div class="col-12 col-md-3"><input type="text" id="pnumber" name="pnumber" value="<?php echo $row['pnumber']; ?>" placeholder="Enter PL Number" class="form-control"></div>
                        <div class="col col-md-3"><input type="hidden" id="latitude" name="latitude" value="" placeholder="Latitude" class="form-control"></div>
                        <div class="col col-md-3"><input type="hidden" id="longitude" name="longitude" value="" placeholder="Longitude" class="form-control"></div>
                    </div>
						  <div class="card-footer" style="background-color:#95ecd4;">
								<button type="submit" class="btn btn-primary btn-sm">
								  <i class="fa fa-dot-circle-o"></i> Update
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

    <script src="<?php echo base_url('assets/js/vendor/jquery-2.1.4.min.js'); ?>"></script>
    <script src="<?php echo base_url('assets/js/popper.min.js'); ?>"></script>
    <script src="<?php echo base_url('assets/js/plugins.js'); ?>"></script>
    <script src="<?php echo base_url('assets/js/main.js'); ?>"></script>
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

</body>
</html>
