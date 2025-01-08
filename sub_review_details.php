

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
                $sql = "SELECT * FROM dept_review WHERE id = '$id'";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
            ?>
            
            <div class="left_side">
                <div class="profiletext">
                    <div class="imgbx">
                        <img src="<?=$row['image']?>" alt="">
                    </div>
                    <h2><?=$row['title']?><br><span><?=$row['full_title']?></span></h2>
                </div>

                <div class="contact-info">
                    <h3 class="title">Reviewer</h3>
                    <ul>
                        <li>
                            <span class="icon"><i class="fa-solid fa-user"></i></span>
                            <span class="text"> <?=$row['review_name']?></span>
                        </li>
                        <li>
                            <span class="icon"><i class="fa-solid fa-clock"></i></span>
                            <span class="text"><?=$row['review_date']?></span>
                        </li>
                    </ul>
                </div>
                
            
                
            
            </div>

            <div class="right_side">
                <div class="about">
                    <h2 class="title2"><?= $row['title']?> কী?</h2>
                    <p><?=$row['about']?></p>
                </div>

                <div class="about">
                    <h2 class="title2"><?= $row['title']?> কেন পড়বেন এবং কারা আসবেন</h2>
                    <p><?=$row['why']?></p>
                </div>

                <div class="about">
                    <h2 class="title2"><?= $row['title']?> পড়তে যে যে দক্ষতা লাগে</h2>
                    <p><?=$row['need']?></p>
                </div>

                <div class="about">
                    <h2 class="title2">বাংলাদেশ ও বিশ্বে <?= $row['title']?> এর চাহিদা</h2>
                    <p><?=$row['important']?></p>
                </div>

                <div class="about">
                    <h2 class="title2"><?= $row['title']?> এর কাজের জায়গা</h2>
                    <p><?=$row['work']?></p>
                </div>
            </div>
            <?php } ?>
        
            
        </div>
        
    </div>

    <?php 
        include_once 'footer.php';
      ?>
  
</body>
</html>