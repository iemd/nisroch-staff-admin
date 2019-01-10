<?php $Loginid = $this->session->userdata('ID');?>
<?php if (!empty($Loginid)){ ?>
        <!-- Header-->
        <div class="content mt-6">
            <div class="animated fadeIn">
            <div class="row">
            <form action="<?php echo base_url('newmeeting/createmeeting/'); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div class="col-lg-12">
              <div class="card" style="background-color:#95ecd4;">
                <div class="card-header">
                  <strong>New Meeting</strong>
      						<h4 style="color:green;"><?php echo $this->session->flashdata('message'); ?></h4>
                </div>
                <div class="card-body card-block">
                  <div class="row form-group">
                      <div class="col col-md-3"><label for="text-input" class=" form-control-label">Date/Time/Day</label></div>
                      <div class="col-12 col-md-3"><input type="text" id="dateofmeeting" name="dateofmeeting" value="<?php echo date('d-m-Y'); ?>" placeholder="Date" class="form-control" readonly></div>
                      <div class="col-12 col-md-3"><input type="text" id="Time" name="Time" value="<?php echo date('g:i A'); ?>" placeholder="Time" class="form-control" readonly></div>
                      <div class="col-12 col-md-3"><input type="text" id="Day" name="Day" value="<?php $d=date('d-m-Y'); echo date('l',strtotime($d)); ?>" placeholder="Day" class="form-control" readonly></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Name of Person</label></div>
                        <div class="col-12 col-md-9"><input type="text" id="nameofperson" name="nameofperson" placeholder="Name of Person" class="form-control"></div>
                      </div>
                      <div class="row form-group">
                          <div class="col col-md-3"><label for="text-input" class=" form-control-label">Name of Business</label></div>
                          <div class="col-12 col-md-9"><input type="text" id="nameofbusiness" name="nameofbusiness" placeholder="Name of Business" class="form-control"></div>

                     </div>

                    <div class="row form-group">
                          <div class="col col-md-3"><label for="text-input" class=" form-control-label">Contact No.</label></div>
                          <div class="col-12 col-md-9"><input type="text" id="contact" name="contact" placeholder="Contact Number" class="form-control"></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Address</label></div>
                        <div class="col-12 col-md-3"><input type="text" id="City" name="City" placeholder="City" class="form-control"></div>
                        <div class="col-12 col-md-3"><input type="text" id="District" name="District" placeholder="District" class="form-control"></div>
                        <div class="col-12 col-md-3"><input type="text" id="Pincode" name="Pincode" placeholder="Pincode" class="form-control"></div>
                      </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Concern</label></div>
                        <div class="col-12 col-md-9"><input type="text" id="Concern" name="Concern" placeholder="Concern" class="form-control"></div>
                      </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Remark</label></div>
                        <div class="col-12 col-md-9"><input type="text" id="Remark" name="Remark" placeholder="Remark" class="form-control"></div>
                      </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Follow Up</label></div>
                        <div class="col col-md-3"><input type="text" id="followuptime" name="followuptime" placeholder="HH:MM" class="form-control"></div>
                        <div class="col col-md-3"><input type="text" id="followupdate" name="followupdate" placeholder="DD-MM-YYYY" class="form-control"></div>
                        <div class="col col-md-3">&nbsp;</div>
                        <div class="col col-md-3"><input type="hidden" id="latitude" name="latitude" value="" placeholder="Latitude" class="form-control"></div>
                        <div class="col col-md-3"><input type="hidden" id="longitude" name="longitude" value="" placeholder="Longitude" class="form-control"></div>
                      </div>
                      <div class="row form-group">
                          <div class="col col-md-3"><label for="text-input" class=" form-control-label">Status</label></div>
                          <div class="col-12 col-md-9">
                            <select name="status" id="status" class="form-control" required="">
                                <option value="">Select</option>
                                <option value="Active">Active</option>
								                <option value="Inactive">Inactive</option>
                                <option value="Not Interested">Not Interested</option>
                                <option value="In Process">In Process</option>
                                <option value="Pending">Pending</option>
                            </select>
                          </div>
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
</body>
</html>
