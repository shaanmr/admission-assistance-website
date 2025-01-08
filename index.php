

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





    <!-- Home Section Start -->
    <div class="home">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">

      <div class="carousel-item active">
          <img src="images/UITS-campus.png" class="d-block w-100" alt="..." style="weight:100%;height:1000px;">
          <div class="carousel-caption d-none d-md-block">
            <h5 style="font-weight:600;font-size:40px;">Discovering Your Academic Destiny</h5>
            <p style="margin-bottom:150px;">Build a Most Successfull Career.</p>
          </div>
        </div>

       
        <div class="carousel-item">
          <img src="images/JU-campus.png" class="d-block w-100" alt="..." style="weight:100%;height:1000px;">
          <div class="carousel-caption d-none d-md-block">
            <h5 style="font-weight:600;font-size:40px;">Empowering Your Education Choices</h5>
            <p style="margin-bottom:150px;">Every Major, Every University - One Destinatio.</p>
          </div>
        </div>

        <div class="carousel-item">
          <img src="images/UIU-campus.png" class="d-block w-100" alt="..." style="weight:100%;height:1000px;">
          <div class="carousel-caption d-none d-md-block">
            <h5 style="font-weight:600;font-size:40px;">"Find Your Ideal University and Major"</h5>
            <p style="margin-bottom:150px;">Unraveling Your Educational Tapestry</p>
          </div>
        </div>
        

      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    </div>



    <!-- Home Section End -->












    <!-- Section Packages Start -->
    <section class="packages" id="packages">
      <div class="container">
        
          <div class="main-txt">
            <h1><span>Top</span> Department </h1>
          </div>

          <div class="row" style="margin-top: 30px;row-gap:30px;">

              <?php 
              include_once 'config.php';
              $sql = "SELECT * FROM `categories`";
              $result = mysqli_query($conn,$sql);
              while($row = mysqli_fetch_assoc($result)){
              ?>

              <div class="col-md-4 py-3 py-md-0">

                  <div class="card">
                    <img src="<?= $row['image']?>" alt="">
                      <div class="card-body">
                        <h3><?= $row['name']?></h3>
                        <p><?= $row['description']?></p>
                        <a href="top-dept-uni.php?category_id=<?= $row['id']?>">See More</a>
                      </div>
                  </div>
              </div>
              <?php } ?>
          </div>
      </div>
    </section>
    <!-- Section Packages End -->
    <div class="main-txt">
          <h1><span>Top</span> University</h1>
        </div>
    <section class="top-university">
    
      <div class="top-university-container">

        <?php 
        include_once 'config.php';
        $sql = "SELECT * FROM `university` ORDER BY rating ASC";
        $result = mysqli_query($conn,$sql);
        while($row = mysqli_fetch_assoc($result)){
        ?>

        <div class="top-university-card">
            <div class="top-university-imgBx">
                <img src="<?=$row['image']?>" alt="nike-air-shoe">
            </div>

            <div class="top-university-contentBx">

                <h2><?=$row['short_title']?></h2>

                <div class="top-university-size">
                    <h3>Rating : <?=$row['rating']?></h3>
                </div>
                <h3><?=$row['full_title']?></h3>
            </div>

        </div>
        <?php } ?>




      </div>
    </section>





    <!-- Section Services Start -->





    <!-- Section Gallary Start -->
    <section class="gallary" id="gallary">
      <div class="container">

        <div class="main-txt">
          <h1><span>G</span>allary</h1>
        </div>
        
        <div class="row" style="margin-top: 30px;row-gap:30px;">
          <?php 
          $sql = "SELECT * FROM `gallery`";
          $result = mysqli_query($conn,$sql);
          while($row = mysqli_fetch_assoc($result)){
          
          ?>
          <div class="col-md-4 py-3 py-md-0">
            <div class="card">
              <img src="<?= $row['image']?>" alt="" height="230px">
            </div>
          </div>
        
        <?php } ?>
        </div>

      </div>
    </section>
    <!-- Section Gallary End -->















    <!-- Footer Start -->
      <?php 
        include_once 'footer.php';
      ?>
    <!-- Footer End -->







    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>