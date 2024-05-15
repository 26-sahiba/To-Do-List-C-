<?php
$page_title = 'Sale Report';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(3);
?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-6">
    <?php echo display_msg($msg); ?>
  </div>
</div>
<div class="row">
  <div class="col-md-6">
    <div class="panel">
      <div class="panel-heading">
        Sales Report
      </div>
      <div class="panel-body">
          <form class="clearfix" method="post" action="sale_report_process.php" target="_blank">
            <div class="form-group">
              <label class="form-label">Date Range</label>
                <div class="input-group">
                  <input type="text" class="datepicker form-control" name="start-date" placeholder="From">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-menu-right"></i></span>
                  <input type="text" class="datepicker form-control" name="end-date" placeholder="To">
                </div>
            </div>
            <div class="form-group">
                 <button type="submit" name="submit" class="btn btn-primary">Generate Report</button>
            </div>
          </form>
      </div>

    </div>
  </div>
  <div class="col-md-6">
    <div class="panel">
      <div class="panel-heading">
        Stock Inventory
      </div>
      <div class="panel-body">
          <form class="clearfix" method="post" action="sales_report_stock.php" target="_blank">
            <div class="form-group">
              <label class="form-label">Date Range</label>
                <div class="input-group">
                  <input type="text" class="datepicker form-control" name="start-date" placeholder="From">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-menu-right"></i></span>
                  <input type="text" class="datepicker form-control" name="end-date" placeholder="To">
                </div>
            </div>
            <div class="form-group">
                 <button type="submit" name="submit" class="btn btn-primary">Generate Report</button>
            </div>
          </form>
      </div>

    </div>
  </div>

  <div class="col-md-6">
    <div class="panel">
      <div class="panel-heading">
        PO Inventory
      </div>
      <div class="panel-body">
          <form class="clearfix" method="post" action="purchase_order.php" target="_blank">
            <div class="form-group">
              <label class="form-label">Date Range</label>
                <div class="input-group">
                  <input type="text" class="datepicker form-control" name="start-date" placeholder="From">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-menu-right"></i></span>
                  <input type="text" class="datepicker form-control" name="end-date" placeholder="To">
                </div>
            </div>
            <div class="form-group">
                 <button type="submit" name="submit" class="btn btn-primary">Generate Report</button>
            </div>
          </form>
      </div>

    </div>
  </div>

</div>
<?php include_once('layouts/footer.php'); ?>
