








<?php 
 session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <title>Admission Assistance</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="css/admin.css">
</head>

<body>
    <!-- =============== Navigation ================ -->
    <div class="container">
        <?php include_once 'admin-nav.php'?>

        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>

                <div class="search">
                    <label>
                        <input type="text" placeholder="Search here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>

                  <div class="">
                     
                     <div class="user-info">
                     <h4> <span><?php echo $_SESSION['admin_name'] ?></span></h4>
                     </div>
                  </div>

                <div class="user">
                    <img src="assets/imgs/customer01.jpg" alt="">
                </div>

            </div>

            <div class="table">
                <h1>Activitiess </h1>
                <div class="btn">
                    <a href="add_activities.php">Add activities </a>
                </div>
            <table>

                    <tr>

                        <th>S.No</th>
                        <th>Description</th>
                        <th>Image</th>
                        <th>Action</th>

                    </tr>
                    <?php 
                    include_once 'config.php';
                    $sql = "SELECT * FROM activities";
                    $result = mysqli_query($conn,$sql);
                    $id = 1;
                    while ($row = mysqli_fetch_assoc($result)){
                    ?>

                    <tr>

                        <td><?= $id++ ?></td>
                        <td style="width:400px;"><?= $row['description']?></td>
                        <td>
                            <img src="<?= $row['image']?>" alt="" style="width:50px;height:50px;">
                        </td>
                        <td style="margin-left :20px;">
                            <div class="action-btn">
                             <a href="view_activities.php?id=<?= $row['id'] ?>" style="background:green;">View</a>
                             <a href="edit_activities.php?id=<?= $row['id'] ?>" style="background:blue;">Edit</a>
                             <a href="delete_activities.php?id=<?= $row['id'] ?>" style="background:red;">Delete</a>  
                            </div>
                                  
                            
                        </td>

                    </tr>
                    <?php } ?>

                    </table>
            </div>

           
        </div>
    </div>

    <!-- =========== Scripts =========  -->
    <script src="css/admin.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>