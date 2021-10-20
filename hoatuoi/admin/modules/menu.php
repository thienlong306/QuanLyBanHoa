<div id="menu">
    <div id="search-group">
        
    </div>
    <div class="menu-content">
        <ul>
            <li><a href="index.php?quanly=dashboard">Dashboard</a></li>
            <li>
                <a href="#">Danh Mục<i class="fas fa-angle-down" style="float:right;line-height:40px"></i></a>
                <ul class="child">
                    <li><a href="index.php?quanly=themdanhmuc">Thêm Danh Mục</a></li>
                    <li><a href="index.php?quanly=danhsachdanhmuc">Danh Sách Danh Mục</a></li>
                </ul>
            </li>
            <li>
                <a href="#">Sản Phẩm<i class="fas fa-angle-down" style="float:right;line-height:40px"></i></a>
                <ul class="child">
                    <li><a href="index.php?quanly=themsanpham">Thêm Sản Phẩm</a></li>
                    <li><a href="index.php?quanly=danhsachsanpham">Danh Sách Sản Phẩm</a></li>
                </ul>
            </li>
            
            <?php 
				if(isset($_SESSION["admin"])) {
					if($_SESSION["admin"]["level"]==2)
						echo '<li>
                				<a href="#">Thành Viên<i class="fas fa-angle-down" style="float:right;line-height:40px"></i></a>
                					<ul class="child">
                    					<li><a href="index.php?quanly=themthanhvien">Thêm Thành Viên</a></li>
                    					<li><a href="index.php?quanly=danhsachthanhvien">Danh Sách Thành Viên</a></li>
                					</ul>
            				</li>';
				}
			?>
            <li><a href="index.php?quanly=danhsachdonhang">Đơn hàng</a></li>
            <li><a href="index.php?quanly=danhsachphanhoi">Phản hồi</a></li>
			<li><a href="index.php?quanly=thongke">Thống kê</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    $(".menu-content ul li a").click(function(){
        if($(this).next(".child").css('display') == 'none')
        {
            $(".child").slideUp();
            $(this).next(".child").slideDown();
        }
        else
            $(this).next(".child").slideUp();
    });
</script>
