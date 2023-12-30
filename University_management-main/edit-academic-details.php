




<?php
session_start();

@include 'config.php';
 
$id = $_GET['id'];
if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $department_head = $_POST['department_head'];
    $cost = $_POST['cost'];
    $year = $_POST['year'];
    $credit = $_POST['credit'];
    $description = $_POST['description'];
    $deadline = $_POST['deadline'];
    $start = $_POST['start'];
    $addmission_fee = $_POST['addmission_fee'];
    $targetDir = "uploads/";
    $targetFile = $targetDir . basename($_FILES["image"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));
    $image = $_FILES["image"];
    $img_loc = $_FILES['image']['tmp_name'];
    $img_name = $_FILES['image']['name'];
    $path = "uploads/" . $img_name;
    move_uploaded_file($img_loc, $path);
    $sql = "UPDATE `subject` SET name = '$name', department_head = '$department_head', image = '$path', cost = '$cost', year = '$year', credit = '$credit', description = '$description', deadline = '$deadline', start = '$start', addmission_fee = '$addmission_fee' WHERE id = '$id'";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Success!</strong> Academic Detaisl Updated Successfully.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>';
      header("Location: academic_details.php");
    } else {
        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Error!</strong> Academic Detaisl Not Updated.
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
                    <h1>Update Academic Details</h1>
                </div>

                <div class="form">
                    <form action="" method="post" enctype="multipart/form-data">
                    <div class="input-group">
                            <label for="name">University Name</label>
                            <input type="text" name="name" value="
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
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
                            <label for="description">Description</label>
                            <input type="text" name="description" value="
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
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
                            <label for="department_head">Department Head Name</label>
                            <input type="text" name="department_head" value="
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['department_head'];
                                }
                            }
                            ?>
                            ">
                        </div>

                       

                        <div class="input-group">
                            <label for="image">Image</label>
                            <input type="file" name="image" accept="image/*" value="
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['image'];
                                }
                            }
                            ?>
                            
                            ">
                        </div>

                        <div class="input-group">
                            <label for="cost">Tution Fees</label>
                            <input type="text" name="cost" value= "
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['cost'];
                                }
                            }
                            ?>
                            ">
                        </div>

                        <div class="input-group">
                            <label for="year">Total Year</label>
                            <input type="text" name="year" value= "
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['year'];
                                }
                            }
                            ?>
                            ">
                        </div>

                        <div class="input-group">
                            <label for="credit">Total Credit</label>
                            <input type="text" name="credit" value= "
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['credit'];
                                }
                            }
                            ?>
                            ">
                        </div>

                        <div class="input-group">
                            <label for="deadline">Deadline</label>
                            <input type="text" name="deadline" value= "
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['deadline'];
                                }
                            }
                            ?>
                            ">
                        </div>

                        <div class="input-group">
                            <label for="start">Class start</label>
                            <input type="text" name="start" value= "
                            <?php 
                            $sql = "SELECT * FROM subject WHERE id = '$id'";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
                                    echo $row['start'];
                                }
                            }
                            ?>
                            ">

                        </div>

                            <div class="input-group">
                                <label for="addmission_fee">Total addmission fee</label>
                                <input type="text" name="addmission_fee" value= "
                                <?php 
                                $sql = "SELECT * FROM subject WHERE id = '$id'";
                                $result = mysqli_query($conn, $sql);
                                if (mysqli_num_rows($result) > 0) {
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        echo $row['addmission_fee'];
                                    }
                                }
                                ?>
                                ">
                            </div>

                        <div class="input-group">
                            <button type="submit" name="submit">Update Academic Details</button>
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