<?php
    include_once 'inc/header.php';

    include 'connect.php';

    $err=[];
    if(isset($_POST['dangky']))
    {
        $name=$_POST['name'];
        $username=$_POST['username'];
        $password=$_POST['password'];
        $repassword=$_POST['repassword'];
        $diachi=$_POST['diachi'];
        $phone=$_POST['phone'];


        $quyen="0";

        if(empty($name))
        { $err['name'] = 'Bạn chưa nhập tên';}
        if(empty($username))
        { $err['username'] = 'Bạn chưa nhập tên đăng nhập';}
        if(empty($diachi))
        { $err['diachi'] = 'Bạn chưa nhập địa chỉ';}
        if(empty($phone))
        { $err['phone'] = 'Bạn chưa nhập số điện thoại';}
        if(empty($password))
        { $err['password'] = 'Bạn chưa nhập mật khẩu';}
        if($password!=$repassword)
        { $err['repassword'] = 'Mật khẩu nhập lại không đúng';}

     
        if(empty($err))
        {   
            
          $sql="INSERT INTO nguoidung(username, password,name,diachi,phone,quyen) VALUES ('$username','$password','$name','$diachi','$phone','$quyen')";
         $query=mysqli_query($conn,$sql);
           if($query)
          {
            $message[] = 'Đăng ký thành công!';
           }
        }
      
    }
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Forms</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
    <style> 
    .has-error{
        color:red
    }
    </style> 

</head>
<?php
if(isset($message)){
   foreach($message as $message){
      echo '<div class="message" onclick="this.remove();">'.$message.'</div>';
   }
}
?>
<body>
	
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Đăng Ký Tài Khoản</div>
				<div class="panel-body">
					<form action = "" method="POST" role="form">
						<fieldset>
                        <div class="form-group">
								<input class="form-control" placeholder="Họ và tên" name="name" type="text" autofocus="">
                                <div class="has-error">
                                    <span> <?php echo (isset($err['name']))?$err['name']:'' ?> </span>
                                </div>
							</div>

                            <div class="form-group">
								<input class="form-control" placeholder="Địa chỉ" name="diachi" type="text" value="">
                                <div class="has-error">
                                <span> <?php echo (isset($err['diachi']))?$err['diachi']:'' ?> </span>
                                </div>
							</div>
                            <div class="form-group">
								<input class="form-control" placeholder="Số điện thoại" name="phone" type="text" value="">
                                <div class="has-error">
                                <span> <?php echo (isset($err['phone']))?$err['phone']:'' ?> </span>
                                </div>
							</div>

                            <div class="form-group">
								<input class="form-control" placeholder="Tên đăng nhập" name="username" type="text" autofocus="">
                                <div class="has-error">
                                <span> <?php echo (isset($err['username']))?$err['username']:'' ?> </span>
                                
                                </div>
							</div>

							<div class="form-group">
								<input class="form-control" placeholder="Mật khẩu" name="password" type="password" value="">
                                <div class="has-error">
                                <span> <?php echo (isset($err['password']))?$err['password']:'' ?> </span>
                                </div>
							</div>

                            <div class="form-group">
								<input class="form-control" placeholder="Nhập lại mật khẩu" name="repassword" type="password" value="">
                                <div class="has-error">
                                <span> <?php echo (isset($err['repassword']))?$err['repassword']:'' ?> </span>
                                </div>
							</div>
                          
                            <button type="submit" class="btn btn-primary" name="dangky">Đăng Ký</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	
		

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
