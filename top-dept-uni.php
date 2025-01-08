




<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Assistance</title>

    <link rel="stylesheet" href="css/style.css">

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
   
    <div class="item-body">
    <div class="main-txt" style="padding:10px;margin-bottom:20px">
          <h1><span>U</span>niversity</h1>
        </div>
        <section class="top-university">
        <div class="top-university-container">
            <?php
                include_once 'config.php';
                $category_id = $_GET['category_id'];
                $sql = "SELECT * FROM top_university WHERE category_id = '$category_id'";
                $result = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($result)){
            ?>

        <div class="top-university-card">
            <div class="top-university-imgBx">
                <img src="<?=$row['image']?>" alt="nike-air-shoe">
            </div>

            <div class="top-university-contentBx">

                <h2><?=$row['name']?></h2>

                <div class="top-university-size">
                    <h3><?=$row['full_name']?></h3>
                    
                </div>

                <div class="top-details-btn">
                        <a href="compare.php" class="btn">Compare</a>
                </div>
            </div>

        </div>
            <?php } ?>
        </div>
        </section>
    
    </div>
 





    <!-- Footer Start -->
    <?php 
        include_once 'footer.php';
      ?>
    <!-- Footer End -->




    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>

