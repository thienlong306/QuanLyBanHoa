<?php
    include('../core/config.php');    
    $sql = "select * from loaisanpham order by idCL asc";
    $run = mysqli_query($conn,$sql);
?>
<div class="container">
    <h2 class="text-center">Thống kê</h2>           
    <table class="table table-hover" style="text-align:center">
        <thead>
            <tr>
                <th>Số lượng truy cập</th>
                <th>Sản phẩm đã bán</th>
                <th>Khách hàng</th>
				<th >Nhân viên</th>
                <th >Doanh Thu</th>
            </tr>
        </thead>
        <tbody>
            <?php
                
                    echo "<tr>";
                        echo "<td>412312</td>";
                        $sql = "SELECT SUM(soluongDH) FROM chitietdonhang";
                            $run = mysqli_query($conn,$sql);
                            $num = mysqli_num_rows($run);
                            $i = 0; 
                            if($num > 0)
                            {
                                while ($row = mysqli_fetch_array($run)) {
                                    if($i <= $num){
                                        if($row['SUM(soluongDH)'] != null)
                                        echo '<td>
                                        '.$row['SUM(soluongDH)'].'</td>';
                                        else {
                                         echo '<td>
                                            0</td>';   
                                        }
                                    }
                                    $i++;
                                }
                            }
						$sql = "select * from taikhoan where level=0 ";
                            $run = mysqli_query($conn,$sql);
                            $row = mysqli_num_rows($run); 
                        echo "<td>".$row."</td>";
						$sql = "select * from taikhoan where level=1 ";
                            $run = mysqli_query($conn,$sql);
                            $row = mysqli_num_rows($run); 
                        echo "<td>".$row."</td>";
						$sql = "SELECT SUM(tongtienDH) FROM donhang";
                            $run = mysqli_query($conn,$sql);
                            $num = mysqli_num_rows($run);
                            $i = 0; 
                            if($num > 0)
                            {
                                while ($row = mysqli_fetch_array($run)) {
                                    if($i <= $num){
                                        if($row['SUM(tongtienDH)'] != null)
                                        echo '<td>
                                        '.number_format($row['SUM(tongtienDH)'],0,',','.').' VNĐ</td>';
                                        else {
                                         echo '<td>
                                            0 VNĐ</td>';   
                                        }
                                    }
                                    $i++;
                                }
                            }
                    echo "</tr>";
                
            ?>
        </tbody>
    </table>
	<h2 class="text-center">Top User</h2>           
    <table class="table table-hover" style="text-align:center">
        <thead>
            <tr>
                                <th>Top</th>
                                <th>Họ Tên</th>
                                <th>SĐT</th>
                                <th>Tổng Sản Phẩm Đã Mua</th>
                                <th>Tổng Giá Trị</th>     
            </tr>
        </thead>
        <tbody>
            
                <?php 
                                $sql = "SELECT taikhoan.name,taikhoan.phone,COUNT(chitietdonhang.soluongDH),SUM(donhang.tongtienDH) FROM taikhoan,donhang,chitietdonhang WHERE taikhoan.idUser = donhang.idUser AND donhang.idDH=chitietdonhang.idDH GROUP BY taikhoan.idUser ORDER BY SUM(donhang.tongtienDH) DESC";
                                $run = mysqli_query($conn,$sql);
                                $num = mysqli_num_rows($run);
                                $i = 0; 
                                if($num > 0)
                                {
                                    while ($row = mysqli_fetch_array($run)) {
                                        if($i <= $num){
                                            echo '<tr>
                                                    <td>'.($i + 1).'</td>
                                                    <td>'.$row['name'].'</td>
                                                    <td>'.$row['phone'].'</td>
                                                    <td>'.$row['COUNT(chitietdonhang.soluongDH)'].'</td>
                                                    <td>'.number_format($row['SUM(donhang.tongtienDH)'],0,',','.').' VNĐ </td>
                                                </tr>';
                                        }
                                        $i++;
                                    }
                                }
                            ?>
        </tbody>
    </table>
</div>