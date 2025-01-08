
<?php
include_once 'config.php';
if (isset($_POST['submit'])) {
  $university1 = $_POST['university1'];
  $university2 = $_POST['university2'];
if ($university1 == $university2) {
  echo "<script>alert('Please select two different universities')</script>";
  echo "<script>window.open('compare.php','_self')</script>";
}
else {
  $sql = "SELECT * FROM university WHERE id = '$university1'";
  $result = mysqli_query($conn,$sql);
  $row = mysqli_fetch_assoc($result);
    $university1_short_title = $row['short_title'];
}
$sql = "SELECT * FROM university WHERE id = '$university2'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result);
    $university2_short_title = $row['short_title'];


}

?>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Assistance</title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/compare.css">

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
   
      <section class="about" id="about">
            <div class="container">

                <div class="main-txt">
                    <h1>U<span>niversity</span></h1>
                </div>

                <div class="process-product">
                    <div class="frist-product">
                        <?php
                            $sql = "SELECT * FROM university WHERE id = '$university1'";
                            $result = mysqli_query($conn,$sql);
                            while($row = mysqli_fetch_assoc($result)){
                        ?>
                        <div class="process-card">
                            <div class="process-card-img">
                                <img src="<?= $row['image']?>" alt="" style="width:250px;height:250px;">
                            </div>
                            <div class="process-card-txt">
                                <h3><?=$university1_short_title?></h3>
                                <p> <?= $row['full_title']?></p>
                                <p>Ranking: <?= $row['rating']?></p>
                                <p>Location: <?= $row['location']?></p>
                                <p>Phone: <?= $row['phone']?></p>
                                <p>Email: <?= $row['email']?></p>
                                <p>Website: <?= $row['web']?></p>
                            </div>
                            <a href="view-details.php?id=<?=$row['id']?>"> Show Details</a>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="frist-product">
                    <?php 
                        $sql = "SELECT * FROM university WHERE id = '$university2'";
                        $result = mysqli_query($conn,$sql);
                        while($row = mysqli_fetch_assoc($result)){
                    ?>
                        <div class="process-card">
                            <div class="process-card-img">
                                <img src="<?= $row['image']?>" alt="" style="width:250px;height:250px;">
                            </div>
                            <div class="process-card-txt">
                                <h3><?=$university2_short_title?></h3>
                                <p><?= $row['full_title']?></p>
                                <p>Ranking: <?= $row['rating']?></p>
                                <p>Location: <?= $row['location']?></p>
                                <p>Phone: <?= $row['phone']?></p>
                                <p>Email: <?= $row['email']?></p>
                                <p>Website: <?= $row['web']?></p>
                            </div>
                            <a href="view-details.php?id=<?=$row['id']?>">Show Details</a>
                        </div>
                    <?php } ?>
                    </div>
                </div>

            </div> 
            

        
      </section>

  





    <?php 
        include_once 'footer.php';
      ?>
 
 






    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>






