<?php
include_once 'db.php';

?>


<?php
if (isset($_POST['signup'])) {
    //$categoryid = $_POST['categoryid'];
    $subcategoryname = $_POST['subcategoryname'];
    $category_select = $_POST['category_select'];
  // echo $category_select;

    
    
   // if ($password1 == $password) {
        //$sql = "INSERT INTO `staff`(`staff_name`,  `mob_number`, `email`, `password`,`address`, `status`) VALUES ('$staff_name','$mob_number','$email','$password1''$address',1)";

      
        $sql1="INSERT INTO `state`( `state_name`,`country_id`,`status`) VALUES ('$subcategoryname',$category_select,1)";
        
        $res = mysqli_query($con, $sql1)or die(mysqli_error($con));


        $p = "select max(state_id) as lgid from state";

        $q = mysqli_query($con, $p) or die(mysqli_error($con));
        $row = mysqli_fetch_array($q);
        $x = $row['lgid'];




        echo '<script> alert("Registration Successful ")</script>';
//    } else {
//
//        echo '<script language="javascript">';
//        echo 'alert("Your password does not match")';
//        echo '</script>';
//    }
}
?>

<head>
    <title>State Registration</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="icon" href="images/rrr.png" type="icon">
    <script src="js/jquery-3.2.1.min.js"></script>
</head>

<script src="js/validation.js"></script>



<form name="form1" class="form-horizontal" method="post" action="" onsubmit="return ValidationEvent()">
    <fieldset>

        <!-- Form Name -->
       <div class="jumbotron">
        <h2>
            <center> State Registration</center>
        </h2>
    </div>
        <br>
        <br>
        <br>
         <br><!-- Text input-->
        
       

<div class="form-group">
            <label class="col-md-4 control-label" for="street"> Country</label>  
            <div class="col-md-4">
                 
                        <select class="form-control" name="category_select" id="category_select">
                        <option value="-1">select</option> 
                     <?php
            $q = mysqli_query($con, "SELECT country_id,country_name FROM country where status=1");
            //var_dump($q);

            while ($row = mysqli_fetch_array($q)) {
                echo '<option value=' . $row['country_id'] . '>' . $row['country_name'] . '</option>';
            }
            ?></select>

            </div>
        </div>
               <div class="form-group">
            <label class="col-md-4 control-label" for="name">State</label>  
            <div class="col-md-4">
                <input id="subcategoryname" name="subcategoryname" type="text" placeholder="Enter subcategory" class="form-control input-md" required="">

            </div>
        </div>
               


        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="signup"></label>
            <div class="col-md-4">

                <input type="submit" name="signup" value="Sign Up" id="signup" class="btn btn-success">
                <button class="btn btn-primary" id="btn_Product_reg" onclick="location.href = 'staff_login.php';" style="float: right;">Log In</button>
            </div>
        </div>

    </fieldset>
</form>
<script>
             $('body').on('click', '#btn_Product_reg', function () {
             $.ajax({
            type:'post',
                    url:'data_save.php',
                    data:{context:'save_product'},
                    success:function(response)
                    {
                        alert(response);
                    }});
         });
        $('body').on('change', '#category_select', function () {
            $index = $('#category_select').val();
           
            $.ajax({
            type:'post',
                    url:'get_subcat.php',
                    data:{index:$index},
                    success:function(response)
                    {
                      
                    console.log(response);
                    $ar = response.split(",");
                            $str = "";
                            for (var i = 0; i < $ar.length; i++)
                    {
                        $ss=$ar[i].split(':');
                    $str += '<option value='+$ss[0]+'>' + $ss[1] + "</option>";
                    }
                    $('#subcategory_select').html($str);
                    }
                    });
        });


             
//        $(document).ready(function(){  
//        $("form#register").submit(function() {
//        // we want to store the values from the form input box, then send via ajax below  
//        var productname = $('#productname').val();  
//        var description = $('#description').val();
//        //var user_pass= $('#user_pass').val();
//        //$user_name = $('#user_name').val();
//        //$user_email = $('#user_email').val();
//        //$password = $('#password').val();
//        alert(productname);
//            $.ajax({  
//                type: "POST",  
//                url: "ajax.php",  
//                data: "produtname="+ productname +"&description="+ description ,  
//                success: function(){  
//                    $('form#register').hide(function(){$('div.success').fadeIn();});  
//                }  
//            });
//            //alert("ji");
//        return false;  
//        });  
//});


    </script>
