<?php $Loginid = $this->session->userdata('ID');?>
<?php if (!empty($Loginid)){ ?>
        <!-- Header-->
        <div class="content mt-6">
            <div class="animated fadeIn">
            <div class="row">
            <form action="<?php //echo base_url('distributor/CreateDistibutor/'); ?>" method="post" enctype="multipart/form-data" class="form-horizontal"><form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div class="col-lg-12">
              <div class="card" style="background-color:#95ecd4;">
                <div class="card-header">
                  <strong>New Meeting</strong>
      						<h4 style="color:green;"><?php echo $this->session->flashdata('message'); ?></h4>
                </div>
                <div class="card-body card-block">
                  <div class="row form-group">
                      <div class="col col-md-3"><label for="text-input" class=" form-control-label">&nbsp;</label></div>
                      <div class="col-12 col-md-3"><input type="text" id="Date" name="Date" placeholder="Date" class="form-control"></div>
                      <div class="col-12 col-md-3"><input type="text" id="Time" name="Time" placeholder="Time" class="form-control"></div>
                      <div class="col-12 col-md-3"><input type="text" id="Day" name="Day" placeholder="Day" class="form-control"></div>
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
                        <div class="col-12 col-md-9"><input type="number" id="Remark" name="Remark" placeholder="Remark" class="form-control"></div>
                      </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Follow Up</label></div>
                        <div class="col-12 col-md-9"><input type="text" id="Followup" name="Followup" placeholder="Follow Up" class="form-control"></div>
                      </div>
                      <div class="row form-group">
                          <div class="col col-md-3"><label for="text-input" class=" form-control-label">Status</label></div>
                          <div class="col-12 col-md-9">
                            <select name="category" id="category" class="form-control" required="">
                                <option value="">Select</option>
                                <option value="active">Active</option>
								                <option value="inactive">Inactive</option>
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
    <script src="<?php echo base_url('assets/js/popper.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/plugins.js')?>"></script>
    <script src="<?php echo base_url('assets/js/main.js')?>"></script>
</body>
</html>
