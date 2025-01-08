






<?php
session_start();

@include 'config.php';
 
if(isset($_POST['submit'])){
    $university_id = $_POST['university_id'];
    $academic_id = $_POST['academic_id'];
    $description = $_POST['description'];
    $targetDir = "uploads/";
    $targetFile = $targetDir . basename($_FILES["image"]["name"]);
    $uploadOk = 1;
    $imageFileType =  strtolower(pathinfo($targetFile,PATHINFO_EXTENSION));
    $image = $_FILES['image'];
    $img_loc =  $_FILES['image']['tmp_name'];
    $img_name = $_FILES['image']['name'];
    $path = "uploads/".$img_name;
    move_uploaded_file($img_loc,$path);
    $sql = "INSERT INTO `activities`(`university_id`, `academic_id`, `description`, `image`) VALUES ('$university_id','$academic_id','$description','$path')";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Success!</strong> Activities Added Successfully.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>';
      header("Location: activities.php");
    }else{
        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Error!</strong> Activities Not Added.
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
                    <h1>Add achivement</h1>
                </div>

                <div class="form">
                    <form action="" method="post" enctype="multipart/form-data">

                    <div class="input-group" >
                        <label for="university_id">University</label>
                        <select name="university_id" id="" style="width:100%;height:50px;background:yellow;">
                            <?php
                            include_once "config.php";
                            $sql = "SELECT * FROM university";
                            $result = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_assoc($result)) {
                                ?>
                                <option value="<?php echo $row['id']; ?>"><?php echo $row['short_title']; ?></option>
                            <?php } ?>
                        </select>
                    </div>

                    <div class="input-group" >
                        <label for="academic_id">Academic</label>
                        <select name="academic_id" id="" style="width:100%;height:50px;background:yellow;">
                            <?php
                            include_once "config.php";
                            $sql = "SELECT * FROM academic";
                            $result = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_assoc($result)) {
                                ?>
                                <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                            <?php } ?>
                        </select>
                    </div>

                        <div class="input-group">
                            <label for="description">Description</label>
                            <input type="text" name="description" placeholder="Enter description">
                        </div>

                        <div class="input-group">
                            <label for="image">Image</label>
                            <input type="file" name="image" accept="image/*">
                        </div>

                        <div class="input-group">
                            <button type="submit" name="submit">Add activities</button>
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