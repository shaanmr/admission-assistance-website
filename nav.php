
    <!-- Navbar Start -->
    <!-- <nav class="navbar navbar-expand-lg fixed-top" id="navbar">

        <div class="container" style="width:100%;">
          <a href="index.php"><img src="./images/graduation-cap.gif" alt="" style="width:50px;height:50px;text-align:center;padding:1px;"></a>
          <a class="navbar-brand" href="index.html" id="logo"><span>U</span>niversity</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span><i class="fa-solid fa-bars"></i></span>
          </button>
          <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
              <li class="nav-item">
                <a class="nav-link active" href="index.php">Home</a>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Universites
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <?php 
                   include_once 'config.php';
                   $sql = "SELECT * FROM nav";
                   $result = mysqli_query($conn,$sql);
                   while($row = mysqli_fetch_assoc($result)){
                    ?>
                  <li><a class="dropdown-item" href="university.php?nav_id=<?=$row['id']?>"><?= $row['name']?></a></li>
                  <?php } ?>
                </ul>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="compare.php">Compare</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="compare.php"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="compare.php">Compare</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.php">Contact Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.php">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="faq.php">FAQs</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.php">LogIn</a>
              </li>
              
             
            </ul>

     

          <form class="d-flex" method="get" action="search.php">
            <input class="form-control me-2" type="text" placeholder="Search" name="search">
            <button class="btn btn-primary" type="submit" name="submit">Search</button>
           </form>

            <ul class="navbar-nav me-auto">
              <li class="nav-item">
                <?php 
                include_once 'config.php';
                $sql = "SELECT * FROM wish";
                $result = mysqli_query($conn,$sql);
                $count = mysqli_num_rows($result);
                
                ?>
                <a class="nav-link" href="wish.php"><i class="fa-solid fa-heart"></i><span><sup><?=$count?></sup></span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href=""><i class="fa-solid fa-bell"></i></a>
              </li>
         
              <li class="nav-item">
               
                <a class="nav-link" href="logout.php"><i class="fa-solid fa-power-off"></i> </a>
                
              </li>
            </ul>

          </div>
        </div>
      </nav> -->

      <!-- Navbar End -->
<div class="menu_ber">
  <div class="logo">
    <a href="index.php"><img src="./images/graduation-cap.gif" alt="" style="width:50px;height:50px;text-align:center;padding:1px;"></a>
    <a href="index.php" id="logo" style="color:#ffa500;"> <span>Admission</span> Assistance</a>
  </div>
  <ul>
    <li><a href="index.php">Home</a></li>
    <li><a href="">Universites <i class="fas fa-caret-down"></i></a>
     <div class="drop-down">
        <ul>
          <?php 
                    include_once 'config.php';
                    $sql = "SELECT * FROM nav";
                    $result = mysqli_query($conn,$sql);
                    while($row = mysqli_fetch_assoc($result)){
                      ?>
                    <li><a class="dropdown-item" href="university.php?nav_id=<?=$row['id']?>"><?= $row['name']?></a></li>
                    <?php } ?>
        </ul>
     </div>
  </li>
     <li><a href="dateline.php">Admissions</a></li>                 
    <li><a href="compare.php">Compare</a></li>
    <li><a href="reviews.php">Subject Reviews</a></li>
    <li><a href="contact.php">Contact</a></li>
    <li><a href="about.php">About</a></li>
    <li><a href="faq.php">FAQs</a></li>
    <div class="search">
    <form class="d-flex" method="get" action="search.php" style="margin: 10px;">
      <input class="form-control me-2" type="text" placeholder="Search" name="search">
      <button class="btn btn-danger" type="submit" name="submit">Search</button>
     </form>
 
  </div>
  </ul>

  <div class="manu_ber" >
      <ul>
      <?php 
        include_once 'config.php';
        $sql = "SELECT * FROM wish";
        $result = mysqli_query($conn,$sql);
        $count = mysqli_num_rows($result);
        
        ?>
        <li><a href="wish.php"><i class="fa-solid fa-heart"></i><span><sup><?=$count?></sup></span></a></li>
        <li><a href=""><i class="fa-solid fa-user-plus"></i></a>
     <div class="drop-down">
        <ul>
  
        <li><a class="dropdown-item" href="login.php">Login</a></li>
        <li><a class="dropdown-item" href="logout.php">Logout</a></li>
        </ul>
     </div>
  </li>
     
      </ul>

    </div>




 

</div>