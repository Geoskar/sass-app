<?php
require "../inc/config.php";

$pageTitle = "My Account - Profile";

require ROOT_PATH . 'inc/view/header.php';

//first checks if a session exists
if(isset($_SESSION['email'])){
//and then calls init.php
require ROOT_PATH . '/inc/init.php';
require ROOT_PATH . 'inc/view/sidebar.php';


?>

	
	<div id="content">		
		
		<div id="content-header">
			<h1>Profile</h1>
		</div> <!-- #content-header -->	


		<div id="content-container">


			<div class="row">

				<div class="col-md-9">

					<div class="row">

						<div class="col-md-4 col-sm-5">

							<div class="thumbnail">
								<img src="<?php echo BASE_URL . $img ?>" alt="Profile Picture" />
							</div> <!-- /.thumbnail -->

							<br />

						</div> <!-- /.col -->


						<div class="col-md-8 col-sm-7">

							<h2><?php echo $f_name . " " . $l_name ?></h2>

							<h4>Position: <?php echo strtoupper($type) ?></h4>

							<hr />

							<p>
								<a href="javascript:;" class="btn btn-primary">Follow Rod</a>
								&nbsp;&nbsp;
								<a href="javascript:;" class="btn btn-secondary">Send Message</a>
							</p>

							<hr />


							<ul class="icons-list">
								<li><i class="icon-li fa fa-envelope"></i> <?php echo $_SESSION['email']; ?></li>
								<li><i class="icon-li fa fa-phone"></i> <?php echo $mobile ?></li>
							</ul>
							Major: <strong><?php echo $major ?></strong>
							<br />
							<br />
							<p><h3>Description</h3></p>
							<p><?php echo $profile_description ?></p>

							<hr />

							<br />

						</div>

					</div>

				</div>

			</div> <!-- /.row -->

		</div> <!-- /#content-container -->	
		
	</div> <!-- #content -->
		
</div> <!-- #wrapper -->

<?php include ROOT_PATH . "inc/view/footer.php"; ?>
<?php } 
else {
	echo '<center><p style="color:red;"> You are not authorized to view this page.</p></center>';
} ?>
