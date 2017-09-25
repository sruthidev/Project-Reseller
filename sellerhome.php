

<?php
//include 'db.php';
//
//if(isset($_POST['submit1']))
//{
//$a=$_POST["fname"];
////echo "<script> alert('hai');</script>";
//$b=$_POST["lname"];
//
//$d=$_POST["mobilenumber"];
//$e=$_POST["email"];
//
//$g=$_POST["country"];
//$h=$_POST["state"];
//$i=$_POST["district"];
//$j=$_POST["town"];
//$k=$_POST["username"];
//$l=$_POST["password"];
//
//
//
//$sql1="INSERT INTO `login`(`username`, `password`,`role_id`) VALUES ('$k','$l','3')";
//$result1=mysqli_query($con,$sql1);
//
//$logid="SELECT `userid` FROM `login` WHERE `username`='$k'";
//$result2=mysqli_query($con,$logid);
//while($row=mysqli_fetch_array($result2))
//{
//
//  $l=$row["userid"];
//}
//
////$sql="INSERT INTO `seller`(NULL,`first_name`, `last_name`, `store_name`, `mobile_number`, `email`, NULL, `gst_no`, `username`, `password`,1) VALUES ('$a','$b','$c','$d','$e','$f','$j','$k','$l')";
////$result3=mysqli_query($con,$sql);
//
//echo"<script>alert('Data Entered Successfully');</script>)";
//
//}

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
        
        <?php


//if(!$_SESSION["userid"])
//{
//	header("Location:http://localhost/aaa/index.php");
//}


?>
        
        
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
							<li><a href="cart.html">Your Cart</a></li>-->
							
							<!--<li><a href="register.php">Seller Register</a></li>-->					
                                                        <li><a href="login.php">Logout</a></li>	
                                                        <!--<button class="btn-block btn" style="margin-right: 10px;" onclick="location.href='driver_logout.php';" >Log Out</button>-->
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.php" class="logo pull-left"><img src="themes/images//logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
            <!--						<ul>
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
                                                            </ul>-->
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
                                            <center><h4 class="title"><span class="text"><strong>Seller home</strong></span></h4></center>
                                                <!--<form action="#" method="post" class="form-stacked"><div class="span5"></div>
							<fieldset>
                                                              
								<div class="control-group">
                                                                    <label class="control-label"><b>First Name:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your first name" id="fname" name="fname" class="input-xlarge">
									</div>
								</div>
                                                            <div class="control-group">
									<label class="control-label"><b>Last Name:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your last name" id="lname" name="lname" class="input-xlarge">
									</div>
								</div>
                                                            <div class="control-group">
									<label class="control-label"><b>Mobile Number:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your mobile number" id="mobilenumber" name="mobilenumber"  class="input-xlarge">
									</div>
								<div class="control-group">
									<label class="control-label"><b>Email address:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your email" id="email" name="email" class="input-xlarge">
									</div>
								</div>
                                                            
                                                            
								</div><div class="control-group">
									<label class="control-label"><b>Country:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your country" id="country" name="country" class="input-xlarge">
									</div>
								</div><div class="control-group">
									<label class="control-label"><b>State:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your state" id="state" name="state" class="input-xlarge">
									</div>
								</div><div class="control-group">
									<label class="control-label"><b>District:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your district" id="district" name="district" class="input-xlarge">
									</div>
								</div><div class="control-group">
									<label class="control-label"><b>Town:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your town" id="town" name="town" class="input-xlarge">
									</div>
								</div>
                                                                <div class="control-group">
									<label class="control-label"><b>Username</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your username" id="username" name="username" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label"><b>Password:</b></label>
									<div class="controls">
                                                                            <input type="password" placeholder="Enter your password" id="password" name="password" class="input-xlarge">
									</div>
								</div>							                            
								</fieldset>
                                                    <center><hr>
                                                                <div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" id="submit1" name="submit1" value="Create your account"></div>
                                                    </center>
						</form>					
					</div>				
				</div>
			</section>			-->
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.php">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contact Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
                                                        <li><a href="./login.php">Login</a></li>							
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