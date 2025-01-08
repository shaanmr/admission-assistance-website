
<?php
session_start();

@include 'config.php';
 
$id = $_GET['id'];
if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $title = $_POST['title'];
    $description = $_POST['description'];
    $date = $_POST['date'];
    $link = $_POST['link'];
    $sql = "UPDATE admission_go SET name = '$name', title = '$title', description = '$description', date = '$date', link = '$link' WHERE id = '$id'";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Success!</strong>Admission Apply Updated Successfully.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>';
      header("Location: admission_uni.php");
    } else {
        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Error!</strong> Admission Apply Not Updated.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>';
    }
}

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
                <div class="text">
                    <h1>Update Admission Apply</h1>
                </div>

                <div class="form">
                    <form action="" method="post" enctype="multipart/form-data">

                    <div class="input-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" value= "
                            <?php 
                            $sql = "SELECT * FROM admission_go WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) { 
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['name'];
                                }
                            }
                            ?>
                            ">
                        </div>
                         
                        <div class="input-group">
                            <label for="title">Title</label>
                            <input type="text" name="title" value= "
                            <?php 
                            $sql = "SELECT * FROM admission_go WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) { 
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['title'];
                                }
                            }
                            ?>
                            ">
                        </div>

                       
                        <div class="input-group">
                            <label for="description">Description</label>
                            <input type="text" name="description" value= "
                            <?php
                            $sql = "SELECT * FROM admission_go WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) { 
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['description'];
                                }
                            }
                            ?>
                            ">
                        </div>

                        <div class="input-group">
                            <label for="date">Dateline</label>
                            <input type="text" name="date" value= "
                            <?php 
                            $sql = "SELECT * FROM admission_go WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) { 
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['date'];
                                }
                            }
                            ?>
                            ">
                        </div>

                        <div class="input-group">
                            <label for="link">Web link</label>
                            <input type="text" name="link" value= "
                            <?php
                            $sql = "SELECT * FROM admission_go WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) { 
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['link'];
                                }
                            }
                            ?>
                            ">
                        </div>
                         

                        <div class="input-group">
                            <button type="submit" name="submit">Update Admission Apply</button>
                        </div>

                    </form>
                </div>

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