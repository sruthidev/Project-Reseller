<?php
include 'db.php';

if(isset($_POST['submit']))
{
$a=$_POST["username"];
$b=$_POST["password"];

$sql="SELECT * FROM `login`";
$result=mysqli_query($con,$sql);
while($row=mysqli_fetch_array($result))
{
	$us_id=$row['userid'];
	?>

	<?php
	if($a==  $row['username']&&$b==$row['password'])
	{
$_SESSION['username']= $a;
			if($a==  $row['username']&&$b==$row['password']&&$row['role_id']=='2')
	{
$_SESSION['username']= $a;
$_SESSION['userid']=$us_id;


		 header('location:sellerhome.php');
		 $sql1="UPDATE `login` SET `status`='1' WHERE `userid`=	$us_id";
         $result=mysqli_query($con,$sql1);
		 break;
	}

	if($a==  $row['username']&&$b==$row['password']&&$row['role_id']=='3')
	{
  $_SESSION['us_id']=$us_id;
		 header('location:buyerhome.php');
		 $sql1="UPDATE `login` SET `status`='1' WHERE `userid`=	$us_id";
         $result=mysqli_query($con,$sql1);
		 break;
	}
  /* if($a==  $row['email']&&$b==$row['pass']&&$row['us_id']=='1')
	{

		$_SESSION['us_id']=$login_id;
		 header('location:admin.php');
		 $sql1="UPDATE `login` SET `status`='1' WHERE `us_id`=$i";
         $result=mysqli_query($con,$sql1);
		 break;
	} */

	}
	else{

	//	echo <script> alert("inalid username and password");</script>;
		header('location:login.php');
	}
	?>



	<?php
}
}
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">	
                                                        <li><a href="index.php">Home</a></li>
<!--							<li><a href="#">My Account</a></li>
							<li><a href="#">Your Cart</a></li>
							<li><a href="#">Checkout</a></li>	-->
                                                        <li><a href="cusregister.php">buyer Registration</a></li>
							<li><a href="register.php">Seller Register</a></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"><img src="themes/images//logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="./products.html">Woman</a>					
								<ul>
									<li><a href="./products.html">Lacinia nibh</a></li>									
									<li><a href="./products.html">Eget molestie</a></li>
									<li><a href="./products.html">Varius purus</a></li>									
								</ul>
							</li>															
							<li><a href="./products.html">Man</a></li>			
							<li><a href="./products.html">Sport</a>
								<ul>									
									<li><a href="./products.html">Gifts and Tech</a></li>
									<li><a href="./products.html">Ties and Hats</a></li>
									<li><a href="./products.html">Cold Weather</a></li>
								</ul>
							</li>							
							<li><a href="./products.html">Hangbag</a></li>
							<li><a href="./products.html">Best Seller</a></li>
							<li><a href="./products.html">Top Seller</a></li>
						</ul>
					</nav>
				</div>
			</section>			
			<section class="header_text sub">
			<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
                        <h4><span></span></h4>
			</section>			
			<section class="main-content">	
                            
				<div class="row">
					<div class="span12">					
                                            <center><h4 class="title"><span class="text"><strong>Login</strong></span></h4></center>
						<form action="#" method="post">
							<input type="hidden" name="next" value="/"><div class="span5"></div>
							<fieldset>
								<div class="control-group">
                                                                    <label class="control-label"><b>Username</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your username" id="username" name="username" class="input-xlarge" required/>
									</div>
								</div>
								<div class="control-group">
                                                                    <label class="control-label"><b>Password</b></label>
									<div class="controls">
                                                                            <input type="password" placeholder="Enter your password" id="password" name="password" class="input-xlarge" required/>
									</div>
								</div></fieldset>
                                                        <center><div class="control-group">
                                                                    <input tabindex="3" class="btn btn-inverse large" type="submit" id="submit" name="submit" value="Sign into your account">
									<hr>
									<p class="reset">Recover your <a tabindex="4" href="#" title="Recover your username or password">username or password</a></p>
                                                            </div></center>
							
						</form>				
					</div>
									
				</div>
                           
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
                                                    <li><a href="./index.php">Homepage</a></li>  
							<li><a href="./#">About Us</a></li>
							<li><a href="./#">Contac Us</a></li>
							<li><a href="./#">Your Cart</a></li>
							<li><a href="./register.php">Register</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>		
    </body>
</html>