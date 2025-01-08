






<?php
session_start();

@include 'config.php';
 
if(isset($_POST['submit'])){
    $university_id = $_POST['university_id'];
    $academic_id = $_POST['academic_id'];
    $name = $_POST['name'];
    $description = $_POST['description'];
    $guideline = $_POST['guideline'];
    $distribution = $_POST['distribution'];
    $sql = "INSERT INTO `graduate`(`university_id`, `academic_id`, `name`, `description`, `guideline`, `distribution`) VALUES ('$university_id','$academic_id','$name','$description','$guideline','$distribution')";
    $result = mysqli_query($conn, $sql);

    if($result){
        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Success!</strong> programs Added Successfully.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>';
        header("Location: graduate_programs.php");
    }else{
        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Error!</strong> programs Not Added.
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
                    <h1>Add Program</h1>
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
                            <label for="name">Program Name</label>
                            <input type="text" name="name" placeholder="Enter name">
                        </div>

                        <div class="input-group">
                            <label for="description">Description</label>
                            <input type="text" name="description" placeholder="Enter description">
                        </div>
               
                        <div class="input-group">
                            <label for="guideline">Guideline</label>
                            <input type="text" name="guideline" placeholder="Enter guideline">
                        </div>

                        <div class="input-group">
                            <label for="distribution">Distribution</label>
                            <input type="text" name="distribution" placeholder="Enter distribution">
                        </div>

                        <div class="input-group">
                            <button type="submit" name="submit">Add Program</button>
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