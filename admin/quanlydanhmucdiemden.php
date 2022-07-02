
<?php include_once 'inc/header.php'?>


<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php include_once 'inc/sidebar.php' ?>

                <!-- End of Topbar --> 

                 <!-- bắt đầu  Nội Dung -->

                 <form
            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" action="timkiemdanhmuc.php" method="POST">
                <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" name="noidung" placeholder="Tìm kiếm..."
                         aria-label="Search" aria-describedby="basic-addon2">
                     <div class="input-group-append">
                             <button class="btn btn-primary" type="submit" name="timkiemdanhmuc" value="Tìm kiếm">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>
            <br> <br>
                    
                 <table  class="table table-hover">
                    <tr >
                        <th> Mã Danh Mục Diem Den  </th>  
                        <th> Tên Danh Mục Diem Den  </th> 
                        <th>
                            <form action="themdanhmucdiemden.php">
                            <button type="submit" class="btn btn-success" name="btsua1">Thêm mới</button>
                            </form> 
                        </th>
                       
                    </tr>
                            <?php 
                                         include 'connect.php';

                                $sql = "select * from loaidiemden"; 
                                $result = $conn-> query($sql); 
                                
                                if($result->num_rows>0)
                                {
                                    while ($row=$result->fetch_assoc())
                                        { 
                                        
                                            echo"<tr>";
                                            echo"<td>".$row["MALOAIDIEMDEN"]."</td>";
                                            echo"<td>".$row["TENLOAIDIEMDEN"]."</td>";
                                            echo"<td>";
                                            ?> 
                                            <a onclick="return confirm('Bạn có thật sự muốn xóa danh mục này?')" href="xulyxoadanhmucdiemden.php?MALOAIDIEMDEN=<?php echo $row["MALOAIDIEMDEN"];?>">Xóa</a>
                                            
                                            <a href="suadanhmucdiemden.php?MALOAIDIEMDEN=<?php echo $row['MALOAIDIEMDEN']; ?>">Sửa</a>
                                            <?php
                                            echo"</td>";
                                            echo"</tr>";
                                        
                                        }
                                }
                                else 
                                echo" 0 result ";
                            ?> 
                        </table>
                        


                        
                   <!--  kết thúc Nội Dung -->  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include_once 'inc/footer.php' ?>