<?php
    include('../../../core/config.php');

    $maSP = $_POST['maSP'];
    $tenSP = $_POST['tenSP'];
    $tenSP_kd = $_POST['tenSP_kd'];
    $giaSP = $_POST['giaSP'];
    $motaSP = $_POST['motaSP'];
	$soluongSP = $_POST['soluong'];
    $idCL = $_POST['idCL'];
    $hinhanhSP = $_FILES["hinhanhSP"]["name"];
    $hinhanhSP_tmp = $_FILES["hinhanhSP"]["tmp_name"];
    move_uploaded_file($hinhanhSP_tmp,"../../uploads/".$hinhanhSP);	

    if(isset($_POST['them']))
    {
		
		
        $sql = "insert into sanpham (idSP,idCL,maSP,tenSP,tenSP_kd,giaSP,motaSP,hinhanhSP,soluong) 
                values ('','$idCL','$maSP','$tenSP','$tenSP_kd','$giaSP','$motaSP','$hinhanhSP','$soluongSP')";
        $row = "select * from loaisanpham where maSP='$maSP'"; // xem có tồn tại không
        if(mysqli_num_rows(mysqli_query($conn,$row))>0) // đã có tồn tại
        {
            echo "<script>alert('Sản phẩm này đã tồn tại!');window.location='../../index.php?quanly=themsanpham'</script>";   
        }
        else
        {
            mysqli_query($conn,$sql);
            echo "<script>window.location='../../index.php?quanly=themsanpham';alert('Thêm sản phẩm này thành công!')</script>";   
        }
    }
    else if(isset($_POST['sua']))
    {
		if($hinhanhSP==""){
        $sql = "update sanpham set idCL='$idCL', maSP='$maSP', tenSP='$tenSP', tenSP_kd='$tenSP_kd', 
                giaSP='$giaSP', motaSP='$motaSP',soluong='$soluongSP' where idSP='$_GET[id]'";
        $row = "select * from sanpham where maSP='$maSP'";
			// xem có tồn tại không
		}else {
		$sql = "update sanpham set idCL='$idCL', maSP='$maSP', tenSP='$tenSP', tenSP_kd='$tenSP_kd', 
                giaSP='$giaSP', motaSP='$motaSP', hinhanhSP='$hinhanhSP',soluong='$soluongSP' where idSP='$_GET[id]'";
        $row = "select * from sanpham where maSP='$maSP'";
			// xem có tồn tại không
		}
        if(mysqli_num_rows(mysqli_query($conn,$row))>0) // đã có tồn tại
        {
            mysqli_query($conn,$sql);
            echo "<script>alert('Sửa sản phẩm này thành công!');window.location='../../index.php?quanly=danhsachsanpham'</script>";   
        }
        else
        {
			echo "<script>alert('Sản phẩm này đã tồn tại!');window.location='../../index.php?quanly=danhsachsanpham'</script>";   
   
        }   
    }
    else
    {
        $sql = "delete from sanpham where idSP='$_GET[id]'";
        mysqli_query($conn,$sql);
        header('location: ../../index.php?quanly=danhsachsanpham'); 
    }
?>