<?php $Loginid = $this->session->userdata('ID');?>
<?php if (!empty($Loginid)){ ?>
        <!-- Header-->
        <?php //print_r($meetings); ?>
        <div class="content mt-6">
            <div class="animated fadeIn">
            <div class="row">
            <form action="<?php //echo base_url('distributor/CreateDistibutor/'); ?>" method="post" enctype="multipart/form-data" class="form-horizontal"><form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div class="col-lg-12">
              <div class="card" style="background-color:#95ecd4;">
                <div class="card-header">
                  <strong>FOLLOW UP MEETING</strong>
      						<h4 style="color:green;"><?php echo $this->session->flashdata('message'); ?></h4>
                </div>
                <div class="card-body card-block">

                    <div class="col-md-9">
                      <div id="calendar"></div>
                    </div>

                  <div class="card-footer" style="background-color:#95ecd4;">
      								<!--<button type="submit" class="btn btn-primary btn-sm">
      								  <i class="fa fa-dot-circle-o"></i> Submit
      								</button>-->
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
    <script src="<?php echo base_url('assets/js/lib/calendar/moment.min.js'); ?>"></script>
    <script src="<?php echo base_url('assets/js/lib/calendar/fullcalendar.min.js'); ?>"></script>
    <script type="text/javascript">
    <?php
      foreach ($meetings as $key => $value) {
          $data[$key]['title'] = $value->concern;
          $data[$key]['start'] = $value->followup_date;
          $data[$key]['end'] = $value->followup_date;
          $data[$key]['backgroundColor'] = "#00a65a";
      }
     ?>
    var events = <?php echo json_encode($data) ?>;

    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()

    jQuery('#calendar').fullCalendar({

      header    : {
        left  : 'prev,next today',
        center: 'title',
        right : 'month,agendaWeek,agendaDay'
      },
      buttonText: {
        today: 'today',
        month: 'month',
        week : 'week',
        day  : 'day'
      },
      events    : events
    })
</script>
</body>
</html>
