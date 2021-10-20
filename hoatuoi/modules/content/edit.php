
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
	

	$user = $_SESSION['user']['username'];
	$sql = "select * from taikhoan where username='$user'";
    $run = mysqli_query($conn,$sql);
    $dong = mysqli_fetch_array($run,MYSQLI_ASSOC);
	
    
?>
<script>

function ktraDangky()
{
	var kq=true;
    // kiểm tra tên người dùng
	var name = document.getElementById("name").value;
    if(name == "")
    {
		document.getElementById("ername").focus;
		document.getElementById("ername").style.color = "red";
        document.getElementById("ername").innerHTML = "* Vui lòng nhập tên của bạn!";
		kq=false;
    }
    else
    {
        document.getElementById("ername").innerHTML = "";
	
    }

    // kiểm tra số điện thoại người dùng
    var telnumber = document.getElementById("phone").value;
    var fillersdt = /^[0-9]{11}$/;
    if(fillersdt.test(telnumber) == false)
    {	
		document.getElementById("erphone").focus;
        document.getElementById("erphone").style.color = "red";
        document.getElementById("erphone").innerHTML = "* Số điện thoại không hợp lệ!";
		kq=false;
    }
    else
    {
        document.getElementById("erphone").innerHTML = "";
    }
	
	// kiểm tra số chứng minh nhân dân
    var cmnd = document.getElementById("cmnd").value;
    var fillercmnd= /^[0-9]{10}$/;
    if(fillercmnd.test(cmnd)==false)
    {
        document.getElementById("ercmnd").focus;
        document.getElementById("ercmnd").style.color = "red";
        document.getElementById("ercmnd").innerHTML = "* Chứng minh thư không hợp lệ.";
		kq=false;
       
    }
    else
    {
        document.getElementById("ercmnd").innerHTML = "";
    }
	// kiểm tra địa chỉ người dùng
	var address = document.getElementById("address").value;
    if(address == "")
    {
		document.getElementById("eraddress").focus;
		document.getElementById("eraddress").style.color = "red";
        document.getElementById("eraddress").innerHTML = "* Vui lòng nhập địa chỉ của bạn!";
		kq=false;
    }
    else
    {
        document.getElementById("eraddress").innerHTML = "";
	
    }
	
	// kiểm tra email người dùng
    var email = document.getElementById("email").value;
    var filler = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if(filler.test(email) == false)
    {        
        document.getElementById("eremail").focus;
        document.getElementById("eremail").style.color = "red";
        document.getElementById("eremail").innerHTML = "* Email điền không hợp lệ!";
		kq=false;
     
    }
    else
    {
        document.getElementById("eremail").innerHTML = "";
    }
	
	// kiểm tra mật khẩu
    var pass1 = document.getElementById("password").value;
    if(pass1.length<8 & pass1!='******')
    {
        document.getElementById("erpassword").focus;
        document.getElementById("erpassword").style.color = "red";
        document.getElementById("erpassword").innerHTML = "* Mật khẩu phải có ít nhất 8 kí tự.";
		kq=false;
    }
    else
    {
        document.getElementById("erpassword").innerHTML = "";
    }
	
    if( kq)  return confirm('Bạn thật sự muốn sửa sao?') ;
	else return false
}
</script>
<div style="width:100%">
	<div class="title-2">
    	<h2>Sửa thông tin</h2>
	</div>
    <div style="border:1px solid rgba(0,0,0,.1);padding:15px">
        <form class="form-horizontal" action="modules/content/xulyform/xulyedit.php?user=<?php echo $dong['username']?>" method="post" enctype="multipart/form-data">
            <fieldset>
                <div style="font-size:24px">Thông tin cá nhân</div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="name">Họ và Tên</label>  
                    <div class="col-md-4">
                        <input value="<?php echo $dong['name']?>" id="name" name="name" type="text" class="form-control input-md" required="">
                        <span id="ername"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="phone">Số điện thoại</label>  
                    <div class="col-md-4">
                        <input value="<?php echo $dong['phone']?>" id="phone" name="phone" type="text" class="form-control input-md" required="">
                        <span id="erphone"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="cmnd">Chứng minh nhân dân</label>  
                    <div class="col-md-4">
                        <input value="<?php echo $dong['cmnd']?>" id="cmnd" name="cmnd" type="text" class="form-control input-md" required="">
                        <span id="ercmnd"></span> 
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="address">Địa chỉ</label>  
                    <div class="col-md-4">
                        <input value="<?php echo $dong['address']?>" id="address" name="address" type="text" class="form-control input-md" required="">
                        <span id="eraddress"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">E-mail</label>  
                    <div class="col-md-4">
                        <input value="<?php echo $dong['email']?>" id="email" name="email" type="text" class="form-control input-md" required="">
                        <span id="eremail"></span>
                    </div>
                </div>
                <div style="font-size:24px">Sửa mật khẩu</div>
                
                <div class="form-group">
                    <label class="col-md-4 control-label" for="pass1">Mật khẩu</label>
                    <div class="col-md-4">
                        <input value="******"  id="password" name="password" type="password" class="form-control input-md" required="">
                        <span id="erpassword"></span>  
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton"></label>
                    <div class="col-md-4">

                    <input type="submit" value="Sửa" name="register-btn" class="btn btn-primary" onclick="return ktraDangky()"/>  
                        <input type="reset" value="Làm lại" class="btn btn-primary"/>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>