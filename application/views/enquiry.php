<?php $Loginid = $this->session->userdata('ID');?>
<?php if (!empty($Loginid)){ ?>

        <!-- Header-->
        <div class="content mt-6">
            <div class="animated fadeIn">
            <div class="row">
            <form action="<?php echo base_url('Enquiry/SendEnquiry/'); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div class="col-lg-12">
              <div class="card" style="background-color:#95ecd4;">
                <div class="card-header">
                  <strong>SEND ENQUIRY</strong>
      						<h4 style="color:green;"><?php echo $this->session->flashdata('message'); ?></h4>
                </div>
                <div class="card-body card-block">
                  <div class="row form-group">
                      <div class="col col-md-3"><label for="text-input" class=" form-control-label">Date | Time | Day</label></div>
                      <div class="col-12 col-md-3"><input type="text" id="dateofenquiry" name="dateofenquiry" value="<?php echo date('d-m-Y'); ?>" placeholder="Date" class="form-control" readonly></div>
                      <div class="col-12 col-md-3"><input type="text" id="Time" name="Time" value="<?php echo date('g:i A'); ?>" placeholder="Time" class="form-control" readonly></div>
                      <div class="col-12 col-md-3"><input type="text" id="Day" name="Day" value="<?php $d=date('d-m-Y'); echo date('l',strtotime($d)); ?>" placeholder="Day" class="form-control" readonly></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Subject</label></div>
                        <div class="col-12 col-md-9">
                          <select name="Subject" id="Subject" class="form-control" required="">
                              <option value="">Select Subject</option>
      												<option value="Leave">Leave</option>
                              <option value="Complain">Complain</option>
                              <option value="Enquiry">Enquiry</option>
                          </select>
                        </div>
                      </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label for="textarea" class=" form-control-label">Message</label></div>
                        <div class="col-12 col-md-9"><textarea id="Message" name="Message" placeholder="Message" class="form-control"></textarea></div>
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
                            <strong class="card-title">SENT ENQUIRY</strong>
                        </div>
            <?php //echo $this->session->flashdata('message');  ?>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Enquiry ID</th>
                        <th>Date</th>
                         <th>Subject</th>
                        <th>Message</th>
                        <th>Remark</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
          <?php foreach($EnquiryDetails as $row) { ?>
                      <tr>
            <?php //print_r($row);die; ?>
                        <td><?php echo $row['enquiry_id']; ?></td>
                        <td><?php echo $row['date']; ?></td>
                        <td><?php echo $row['subject']; ?></td>
                        <td><?php echo $row['message']; ?></td>
                        <td><?php echo $row['remark']; ?></td>

              <td><!--<a href="<?php //echo base_url('Enquiry/edit/').$row['enquiry_id']; ?>"><i class="fa fa-edit" style="font-size:24px;color:green"></i></a>-->
              <a href="<?php echo base_url('Enquiry/delete/').$row['enquiry_id']; ?>"><i class="fa fa-trash" style="font-size:24px;color:red"></i></a></td>
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

</body>
</html>
