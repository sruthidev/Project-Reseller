

<?php
include 'db.php';

if(isset($_POST['submit1']))
{
$a=$_POST["fname"];
//echo "<script> alert('hai');</script>";
//$b=$_POST["category_select"];
//$g=$_POST["subcategory_select"];

$e=$_POST["email"];

$m="photo/".time()."".htmlspecialchars($_FILES['photo']['name']);
              move_uploaded_file($_FILES['photo']['tmp_name'], $m);




$sql1="INSERT INTO `product`(`product_name`, `description`,`image`,`status`) VALUES ('$a','$e','$m',1)";
$result1=mysqli_query($con,$sql1);

//$logid="SELECT `userid` FROM `login` WHERE `username`='$k'";
//$result2=mysqli_query($con,$logid);
//while($row=mysqli_fetch_array($result2))
//{
//
//  $l=$row["userid"];
//}

//$sql="INSERT INTO `seller`(NULL,`first_name`, `last_name`, `store_name`, `mobile_number`, `email`, NULL, `gst_no`, `username`, `password`,1) VALUES ('$a','$b','$c','$d','$e','$f','$j','$k','$l')";
//$result3=mysqli_query($con,$sql);

echo"<script>alert('Data Entered Successfully');</script>)";

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
							<li><a href="cart.html">Your Cart</a></li>-->
                                                        <li><a href="cusregister.php">buyer Registration</a></li>					
                                                        <li><a href="login.php">Login</a></li>		
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
                                            <center><h4 class="title"><span class="text"><strong>PRODUCT DETAILS</strong></span></h4></center>
                                            <form action="#" method="post" class="form-stacked" enctype="multipart/form-data"><div class="span5"></div>
							<fieldset>
                                                              
								<div class="control-group">
                                                                    <label class="control-label"><b>Product Name:</b></label>
									<div class="controls">
                                                                            <input type="text" placeholder="Enter your first name" id="fname" name="fname" class="input-xlarge"  data-rule="maxlen:4" required >
								<div class="validation"></div>
									</div>
								</div>
                                                            <div class="control-group">
									<label class="control-label"><b>Category:</b></label>
									<div class="controls">
                                                                            <!--<input type="text" placeholder="Enter your last name" id="lname" name="lname" class="input-xlarge" required/>--> 
								<select class="form-control" id="category_select" name="category_category" class="input-xlarge" required/><option value="-1">select</option>
                        
                    <?php
            $q = mysqli_query($con, "SELECT category_id,category_name FROM category where status=1");
            //var_dump($q);

            while ($row = mysqli_fetch_array($q)) {
                echo '<option value=' . $row['category_id'] . '>' . $row['category_name'] . '</option>';
            }
            ?>
                    </select>
                                                                            <div class="validation"></div>
									</div>
								</div>
                                                            <div class="control-group">
									<label class="control-label"><b>Subcategory:</b></label>
									<div class="controls">
                                                                            <!--<input type="text" placeholder="Enter your store name" id="storename" name="storename" class="input-xlarge" required/>-->
									<select class="form-control" type="text" id="subcategory_select" name="subcategory_id"><option value="-1">select</option></select>
                                                                        </div>
								</div><div class="control-group">
									<label class="control-label"><b>Product Image:</b></label>
									<div class="controls">
                                                                            <input type="file" id="photo" name="photo"  class="input-xlarge" required/>
									</div>
								<div class="control-group">
									<label class="control-label"><b>Description:</b></label>
									<div class="controls">
                                                                            <input type="email" placeholder="Enter your email" id="email" name="email" class="input-xlarge" data-rule="email" required/> 
								<div class="validation"></div>
									</div>
								</div>
                                                            
                                                            
								</div>							                            
								</fieldset>
                                                    <center><hr>
                                                                <div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" id="submit1" name="submit1" value="Create your account"></div>
                                                    </center>
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
                        
                        $('body').on('click', '#btn_Product_reg', function () {
             $.ajax({
            type:'post',
                    url:'exec/data_save.php',
                    data:{context:'save_product'},
                    success:function(response)
                    {
                        alert(response);
                    }});
         });
        
        $('body').on('change', '#category_select', function () {
//            alert("countryslected");
            $index = $('#category_select').val();
           
            $.ajax({
            type:'post',
                    url:'get_subcategory.php',
                    data:{index:$index},
                    success:function(response)
                    {
//                        alert(response);
                    console.log(response);
                    $ar = response.split(",");
                            $str = "<option value='-1' disabled hidden selected> </option>";
                            for (var i = 0; i < $ar.length; i++)
                    {
                        $ss=$ar[i].split(':');
                    $str += '<option value='+$ss[0]+'>' + $ss[1] + "</option>";
                    }
                    $('#subcategory_select').html($str);
                }
                    });
                    
    });
                        
                        
		</script>		
    </body>
</html>