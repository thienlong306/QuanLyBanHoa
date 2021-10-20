<?php
    $hostname = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'hoatuoialumbale';
    $conn = mysqli_connect($hostname,$username,$password,$dbname);
    if(!$conn)
    {
        die("Kết nối thất bại: " . mysqli_connect_error());
    }
    mysqli_select_db($conn,$dbname);    
    mysqli_set_charset($conn,"utf8");

 

	
	
	$user = $_GET['user'];
    $password = md5($_POST['password']);
    $name = $_POST['name'];
    $cmnd = $_POST['cmnd'];
    $address = $_POST['address'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
	
		$select = "select * from taikhoan where username='$user'";
        $row = mysqli_fetch_array(mysqli_query($conn,$select),MYSQLI_ASSOC);
       
			if($password==md5('******'))
				$password=$row['password'];
			$sql = "update taikhoan set password='$password', name='$name', cmnd='$cmnd', address='$address', email='$email', phone='$phone'where username='$user'";
            mysqli_query($conn,$sql);
         
 
	echo '<script>window.location="../../../index.php?act=edit"</script>';          
    
       
     
?>