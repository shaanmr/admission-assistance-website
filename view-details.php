
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Assistance</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <!-- Bootstrap Link -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Link -->

     <!-- Google Fonts -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!-- Google Fonts -->
</head>
<body>

<?php 
      include_once 'nav.php';
    ?>

    <div class="cv-body">
    <div class="cv">
        <?php 
            include_once 'config.php';
            $id = $_GET['id'];
            $sql = "SELECT * FROM university WHERE id = '$id'";
            $result = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($result)){
        ?>
        
        <div class="left_side">
        <div class="profiletext">
            <div class="imgbx">
                <img src="<?=$row['image']?>" alt="">
            </div>
            <h2><?=$row['short_title']?><br><span><?=$row['full_title']?></span></h2>
        </div>

        <div class="contact-info">
            <h3 class="title">Contact info</h3>
            <ul>
                <li>
                    <span class="icon"><i class="fa-solid fa-phone"></i></span>
                    <span class="text">+88 <?=$row['phone']?></span>
                </li>
                <li>
                    <span class="icon"><i class="fa-solid fa-envelope"></i></span>
                    <span class="text"><?=$row['email']?></span>
                </li>
                <li>
                    <span class="icon"><i class="fa-solid fa-globe"></i></span>
                    <span class="text"><a href="<?=$row['web']?>">Web Link</a></span>
                </li>
                <li>
                    <span class="icon"><i class="fa-solid fa-location-dot"></i></span>
                    <span class="text"><?=$row['location']?></span>
                </li>
            </ul>
        </div>
       
        
        <?php } ?>
    

        <div class="contact-info education">
            <h3 class="title">Departments</h3>
            <?php 
                include_once 'config.php';
                $id = $_GET['id'];
                $sql = "SELECT * FROM academic WHERE university_id = '$id'";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
                     

                       
                ?>
            <ul>
                <li>
                    <a href="academic-details.php?
                    academic_id=<?=$row['id']?>& 
                    university_id=<?=$row['university_id']?>
                    " style="text-decoration:none;font-size:20px;color:white;"><?=$row['name']?></a>
                    
                </li>
            </ul>
            <?php } ?>
           
            
           
        </div>
        <?php 
            include_once 'config.php';
            $id = $_GET['id'];
            $sql = "SELECT * FROM university WHERE id = '$id'";
            $result = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($result)){
        
        ?>
        
        <div class="contact-info education">
            <h3 class="title">Ranking</h3>
            <ul>
                <li>
                    <h5 class="heading"><?=$row['rating']?></h5>
                </li>
            </ul>
        </div>
        <div class="contact-info education">
            <h3 class="title">Vice-Chancellor</h3>
            <ul>
                <li>
                    <h5 class="heading"><?=$row['vc']?></h5>
                </li>
            </ul>
        </div>

        <div class="contact-info education">
            <h3 class="title">Founder</h3>
            <ul>
                <li>
                    <h5 class="heading"><?=$row['founder']?></h5>
                </li>
            </ul>
        </div>

    </div>
    <div class="right_side">
        <div class="about">
            <h2 class="title2">Description</h2>
            <p><?=$row['description']?></p>
        </div>

        <?php } ?>

        <div class="about">
            <h2 class="title2">Faculty Name</h2>
            <?php 
                include_once 'config.php';
                $id = $_GET['id'];
                $sql = "SELECT * FROM faculty WHERE university_id = '$id'";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
            
            ?>
            <div class="box">
                <div class="year_company" style="width:100%;margin-left:25px;">
                    <a  href="<?=$row['web']?>" style="color:;font-size: 25px;text-decoration:none;"><?= $row['name']?></a>
                </div>
            </div>
            <?php } ?>
        

        </div>

        <div class="about">
            <h2 class="title2">Admission Deadline</h2>
            <?php 
                include_once 'config.php';
                $id = $_GET['id'];
                $sql = "SELECT * FROM admission_go WHERE university_id = '$id'";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
            ?>
            <div class="box">
                <div class="year_company" style="width:100%;margin-left:25px;">
                   <h1 style="color:blue;"><?= $row['title']?></h1>
                   <h4><?= $row['description']?></h4>
                     <h4>Date: <?= $row['date']?></h4>
                   <a href="<?= $row['link']?>" class="apply">Apply now</a>
                </div>
            </div>
            <?php } ?>
          
        </div>

        <div class="about">
            <h2 class="title2">Tution Fees</h2>
            <?php 
                include_once 'config.php';
                $id = $_GET['id'];
                $sql = "SELECT * FROM tution WHERE university_id = '$id'";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
            ?>
            <div class="box">
                <div class="year_company" style="width:100%;margin-left:25px;">
                    <img src="<?= $row['image']?>" alt="">
                </div>
            </div>
            <?php } ?>
          
        </div>
 
        <div class="about">
            <h2 class="title2">Admission Offices</h2>
            <?php 
                include_once 'config.php';
                $id = $_GET['id'];
                $sql = "SELECT * FROM admission WHERE university_id = '$id'";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
            ?>
            <div class="box">
                <div class="year_company" style="width:100%;margin-left:25px;">
                    <a  href="<?=$row['web']?>" style="color:;font-size: 25px;text-decoration:none;"><?= $row['name']?></a>
                </div>
            </div>
            <?php } ?>
        </div>

        <div class="about certificate">
            <h2 class="title2">Administration</h2>
            <?php 
                include_once 'config.php';
                $id = $_GET['id'];
                $sql = "SELECT * FROM administrative WHERE university_id = '$id'";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
            ?>
            <div class="box">
                <div class="year_company" style="width:100%;margin-left:25px;">
                    <a  href="<?=$row['web']?>" style="color:;font-size: 25px;text-decoration:none;"><?= $row['name']?></a>
                </div>
            </div>
            <?php } ?>

        </div>


        <div class="about certificate">
            <h2 class="title2">Review</h2>
            <?php 
                include_once 'config.php';
                if(isset($_POST['submit-review'])){
                    $university_id = $_POST['university_id'];
                    $name = $_POST['name'];
                    $review = $_POST['review'];
                    $sql = "INSERT INTO review (university_id,name,review) VALUES ('$university_id','$name','$review')";
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
                        <?php 
                         include_once 'config.php';
                            $id = $_GET['id'];
                            $sql = "SELECT * FROM university WHERE id = '$id'";
                            $result = mysqli_query($conn,$sql);
                            while($row = mysqli_fetch_assoc($result)){
                        ?>
                        <input type="hidden" name="university_id" value="<?=$row['id']?>">
                        <?php } ?>
                        <input type="text" name="name" id="" placeholder="Enter Your Name" class="input-field">
                        <textarea name="review" id="" cols="30" rows="10"  style="width:100%;height:100px;" placeholder="Enter your review"></textarea>
                        <input type="submit" name="submit-review" value="Submit" class="btn">
                        
                    </form>
                    
                    <div class="review-heading">
                    <h1>Reviews</h1>
                </div>
                <?php 
                $id = $_GET['id'];
                $sql = "SELECT * FROM review WHERE university_id = $id";
                $result = mysqli_query($conn, $sql);
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        ?>
                        <div class="review-card">
                            <div class="review-card-text">
                                <h1><?= $row['name']?></h1>
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


                    
        <?php 
        include_once 'config.php';
        if(isset($_POST['submit'])){
            $name = $_POST['name'];
            $full_name = $_POST['full_name'];
            $image = $_POST['image'];
            $sql = "INSERT INTO wish (name,full_name,image) VALUES ('$name','$full_name','$image')";
            $result = mysqli_query($conn,$sql);
            if($result){
                echo "<script>alert('Wish Added Successfully')</script>";
            }else{
                echo "<script>alert('Wish Added Failed')</script>";
            }
        }
        ?>

        <div class="details-btn">
            <form action="" method="post">
                <?php
                 $sql = "SELECT * FROM university WHERE id = '$id'";
                    $result = mysqli_query($conn,$sql);
                    while($row = mysqli_fetch_assoc($result)){
                ?>
                <input type="hidden" name="name" value="<?= $row['short_title']?>">
                <input type="hidden" name="full_name" value="<?= $row['full_title']?>">
                <input type="hidden" name="image" value="<?= $row['image']?>">
                <input type="submit" name="submit" value="Wish" class="wish-btn">
            </form>
            <?php } ?>
            <a href="compare.php">Compare</a>
        </div>
       
        
    </div>
  </div>
    </div>

    <?php 
        include_once 'footer.php';
      ?>
  
</body>
</html>