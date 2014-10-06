<?php
/**
 * Created by PhpStorm.
 * User: rdok
 * Date: 9/26/2014
 * Time: 10:41 AM
 */
?>

<?php
require __DIR__ . '/../../app/init.php';
$general->loggedOutProtect();

$pageTitle = "All Appointments - List";
$section = "appointments";

$appointments = AppointmentFetcher::retrieveAllOfCurrTerms($db);
?>

<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<?php require ROOT_PATH . 'views/head.php'; ?>
<body>
<div id="wrapper">
	<?php
	require ROOT_PATH . 'views/header.php';
	require ROOT_PATH . 'views/sidebar.php';
	?>

	<div id="content">

		<div id="content-header">
			<h1><?php echo $pageTitle; ?></h1>
		</div>
		<!-- #content-header -->

		<div id="content-container">

			<div class="row">

				<div class="col-md-12">

					<div class="portlet">

						<div class="portlet-header">

							<h3>
								<i class="fa fa-table"></i>
								All Appointments of Current Terms
							</h3>

						</div>
						<!-- /.portlet-header -->

						<div class="portlet-content">
							<div class="table-responsive">
								<table
									class="table table-striped table-bordered table-hover table-highlight"
									data-provide="datatable"
									data-info="true"
									data-search="true"
									data-length-change="true"
									data-paginate="false"
									id="usersTable"
									>
									<thead>
									<tr>
										<th class="text-center" data-filterable="true" data-sortable="true">
											ID
										</th>
										<th class="text-center" data-filterable="true" data-sortable="true">
											Tutor
										</th>
										<th class="text-center" data-direction="desc" data-filterable="true"
										    data-sortable="true">Start
										</th>
										<th class="text-center" data-filterable="true" data-sortable="true">
											End
										</th>
										<th class="text-center" data-filterable="true" data-sortable="true">
											Course Code
										</th>
										<th class="text-center" data-filterable="true" data-sortable="false">
											Course Name
										</th>
										<th class="text-center" data-filterable="true" data-sortable="true">
											Term
										</th>
									</tr>
									</thead>
									<tbody>

									<?php
									if (empty($errors) === true) {
										foreach ($appointments as $appointment) {
											include(ROOT_PATH . "views/partials/appointments/table-data-view.html.php");
										}
									}
									?>
									</tbody>
								</table>
							</div>
							<!-- /.table-responsive -->

						</div>
						<!-- /.portlet-content -->


					</div>
					<!-- /.portlet -->

				</div>
				<!-- /.col -->

			</div>
			<!-- /.row -->


		</div>
		<!-- #content-container -->
	</div>
	<!-- #content -->

	<?php include ROOT_PATH . "views/footer.php"; ?>
</div>
<!-- #wrapper -->

<?php include ROOT_PATH . "views/assets/footer_common.php"; ?>
<script src="<?php echo BASE_URL; ?>assets/js/plugins/select2/select2.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/plugins/datatables/DT_bootstrap.js"></script>

<script src="<?php echo BASE_URL; ?>assets/js/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/plugins/timepicker/bootstrap-timepicker.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/plugins/simplecolorpicker/jquery.simplecolorpicker.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/plugins/textarea-counter/jquery.textarea-counter.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/plugins/autosize/jquery.autosize.min.js"></script>

</body>
</html>