




<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Assistance</title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/academic-details.css">

    <!-- Bootstrap Link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Link -->


    <!-- Font Awesome Cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Font Awesome Cdn -->


    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!-- Google Fonts -->
</head>
<body>
    





    <!-- Navbar Start -->
    <?php 
      include_once 'nav.php';
    ?>
    <!-- Navbar End -->
    
    <div class="academic-item-body">
        <div class="academic-main-txt">
            <?php 
            include_once 'config.php';
            $university_id = $_GET['university_id'];
            $sql = "SELECT * FROM `university` WHERE id = '$university_id'";
            $result = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($result)){
            ?>
                <h1><span><?=$row['full_title']?></span></h1>
            <?php } ?>
        </div>

        <div class="academic-item">
          
            <!-- <div class="academic-details"> -->
                <?php
                    include_once 'config.php';
                    $academic_id = $_GET['academic_id'];
                    $university_id = $_GET['university_id'];
                    $sql = "SELECT * FROM `subject` WHERE academic_id = '$academic_id' AND university_id = '$university_id'";

                    $result = mysqli_query($conn,$sql);
                    while($row = mysqli_fetch_assoc($result)){
                ?>
                    <div class="description">
                        <h2>Description</h2>
                        <p><?=$row['description']?></p>
                    </div>

                    <div class="a-button">
                        <a href="view-undergaduate.php?academic_id=<?=$row['id']?>& university_id=<?=$row['university_id']?>">Undergraduate Programs</a>
                        <a href="view-graduate.php?academic_id=<?=$row['id']?>& university_id=<?=$row['university_id']?>">Graduate Programs</a>
                        <a href="view-catalog.php?academic_id=<?=$row['id']?>& university_id=<?=$row['university_id']?>">Course Catalog</a>
                        <a href="view-achivment.php?academic_id=<?=$row['id']?>& university_id=<?=$row['university_id']?>">Achievments</a>
                        <a href="view-activities.php?academic_id=<?=$row['id']?>& university_id=<?=$row['university_id']?>">Academic Activities</a>
                    </div>

                    <div class="fees">
                        <h2>Tution Fees</h2>
                        <p>Total : <?=$row['cost']?>/-</p>
                    </div>

                    <div class="fees">
                        <h2>Total Years</h2>
                        <p>Total : <?=$row['year']?> years</p>
                    </div>

                    <div class="head">
                        <h2>Department Head</h2>
                        <div class="head-details">
                            <img src="<?=$row['image']?>" alt="" >
                            <p><?=$row['department_head']?></p>
                        </div>
                        
                    </div>
                   
                    <?php } ?>
                    <div class="teacher-box">
                        <h2>Faculty Members</h2>
                        <div class="teacher-details">
                            <?php 
                            include_once 'config.php';
                            $academic_id = $_GET['academic_id'];
                            $university_id = $_GET['university_id'];
                            $sql = "SELECT * FROM `faculty_member` WHERE academic_id = '$academic_id' AND university_id = '$university_id'";
                            $result = mysqli_query($conn,$sql);
                            while($row = mysqli_fetch_assoc($result)){

                            ?>
                            <div class="teacher">
                               
                                    <img src="<?= $row['image']?>" alt="">
                                
                                <div class="teacher-details-con">
                                    <h3><?= $row['name']?></h3>
                                    <p><?= $row['designation']?></p>
                                </div>
                            </div>
                            <?php } ?>
                            
                        </div>
                    
                    </div>

                    <div class="teacher-box">
                        <h2>Successful Alumni</h2>
                        <div class="teacher-details">
                            <?php 
                            include_once 'config.php';
                            $academic_id = $_GET['academic_id'];
                            $university_id = $_GET['university_id'];
                            $sql = "SELECT * FROM `alumni` WHERE academic_id = '$academic_id' AND university_id = '$university_id'";
                            $result = mysqli_query($conn,$sql);
                            while($row = mysqli_fetch_assoc($result)){

                            ?>
                            <div class="teacher">
                               
                                    <img src="<?= $row['image']?>" alt="">
                                
                                <div class="teacher-details-con">
                                    <h3><?= $row['name']?></h3>
                                    <p><?= $row['designation']?></p>
                                    <p><?= $row['post']?></p>
                                </div>
                            </div>
                            <?php } ?>
                            
                        </div>
                    
                    </div>

                    <div class="about certificate">
            <h2 class="" style="text-align:center;">Review</h2>
            <?php 
                include_once 'config.php';
                if(isset($_POST['submit-review'])){
                    $academic_id = $_POST['academic_id'];
                    $name = $_POST['name'];
                    $dept = $_POST['dept'];
                    $review = $_POST['review'];
                    $sql = "INSERT INTO `sub_review`(`academic_id`, `name`,`dept`, `review`) VALUES ('$academic_id','$name','$dept','$review')";
                    $result = mysqli_query($conn,$sql);
                    if($result){
                        echo "<script>alert('Review Added Successfully')</script>";
                    }else{
                        echo "<script>alert('Review Added Failed')</script>";
                    }
                }
            ?>
            <div class="box">
                <div class="year_company" style="width:100%;margin-left:25px;display:flex;flex-direction:column;">
                    <form action="" class="review" method="post">

                        <input type="hidden" name="academic_id" value="<?= $_GET['academic_id']?>">
                        <input type="text" name="name" id="" placeholder="Enter Your Name " class="input-field">
                        <input type="text" name="dept" placeholder="Enter your dept & batch" class="input-field">
                        <textarea name="review" id="" cols="30" rows="10"  style="width:100%;height:100px;" placeholder="Enter your review"></textarea>
                        <input type="submit" name="submit-review" value="Submit" class="btn">
                        
                    </form>
                    
                    <div class="review-heading">
                    <h1>Reviews</h1>
                </div>
                <?php 
                include_once 'config.php';
                $academic_id = $_GET['academic_id'];
                $sql = "SELECT * FROM `sub_review` WHERE academic_id = '$academic_id'";
                $result = mysqli_query($conn,$sql);
                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_assoc($result)){?>

                        <div class="review-card">
                            <div class="review-card-text">
                                <h1><?= $row['name']?></h1>
                                <h3><?= $row['dept']?></h3>
                                <p><?= $row['review']?></p>
                            </div>
                        </div>
                    <?php }
                } else {
                    echo "<h1>No Review Found</h1>";
                }

                ?>
                </div>
                <div class="details-btn">
                    
                </div>
            </div>
            

        </div>
            <!-- </div> -->
        </div>
    </div>
    
   
    
 





    <!-- Footer Start -->
    <?php 
        include_once 'footer.php';
      ?>
    <!-- Footer End -->




    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>