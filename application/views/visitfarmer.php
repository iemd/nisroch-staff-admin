<?php $Loginid = $this->session->userdata('ID');?>
<?php if (!empty($Loginid)){ ?>
        <!-- Header-->
        <div class="content mt-6">
            <div class="animated fadeIn">
            <div class="row">
            <form action="<?php echo base_url('VisitFarmer/CreateVisitFarmer/'); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div class="col-lg-12">
              <div class="card" style="background-color:#95ecd4;">
                <div class="card-header">
                  <strong>ADD VISIT FARMER</strong>
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
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Remark</label></div>
                        <div class="col-12 col-md-9"><input type="text" id="Remark" name="Remark" placeholder="Remark" class="form-control"></div>
                      </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Follow Up</label></div>
                        <div class="col col-md-3"><input type="text" id="followuptime" name="followuptime" placeholder="HH:MM" class="form-control"></div>
                        <div class="col col-md-3"><input type="text" id="followupdate" name="followupdate" placeholder="YYYY-MM-DD" class="form-control"></div>
                        <div class="col col-md-3">&nbsp;</div>
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
    <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card" style="background-color:#95ecd4;">
                        <div class="card-header">
                            <strong class="card-title">VISIT FARMER DETAILS</strong>
                        </div>
            <?php //echo $this->session->flashdata('message');  ?>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Visit Date</th>
                        <th>Current NPP</th>
                         <th>Current NBP</th>
                        <th>Follow Up Time</th>
                        <th>Follow Up Date</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
          <?php foreach($VisitFarmerDetails as $row) { ?>
                      <tr>
            <?php //print_r($row);die; ?>
                        <td><?php echo $row['visit_date']; ?></td>
                        <td><?php echo $row['currentNpp']; ?></td>
                        <td><?php echo $row['currentNbp']; ?></td>
                        <td><?php echo $row['followup_time']; ?></td>
                        <td><?php echo $row['followup_date']; ?></td>

              <td><a href="<?php echo base_url('VisitFarmer/edit/').$row['visit_id']; ?>"><i class="fa fa-edit" style="font-size:24px;color:green"></i></a>
              <a href="<?php echo base_url('VisitFarmer/delete/').$row['visit_id']; ?>"><i class="fa fa-trash" style="font-size:24px;color:red"></i></a></td>
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
      jQuery( "#followupdate" ).datepicker( { dateFormat: 'yy-mm-dd' });
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
				url : "<?php echo site_url('VisitFarmer/DLimit');?>",
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
</body>
</html>
