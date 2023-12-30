


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
              <h1>Compare <span>University</span></h1>
            </div>

            <div class="compare">
                <form action="process.php" method="post">
                    <div class="compare-section">
                        <div class="left">
                            <select name="university1" id="university1">
                            <option value="">Select University</option>
                            <?php 
                            include_once 'config.php';
                                $sql = "SELECT * FROM university";
                                $result = mysqli_query($conn,$sql);
                                while($row = mysqli_fetch_assoc($result)){
                            ?>
                            <option value="<?=$row['id']?>"><?=$row['short_title']?> </option>
                                    
                            <?php } ?>
                            </select>
                        </div>

                        <div class="right">
                            <select name="university2" id="university2">
                            <option value="">Select University</option>
                            <?php 
                            include_once 'config.php';
                                $sql = "SELECT * FROM university";
                                $result = mysqli_query($conn,$sql);
                                while($row = mysqli_fetch_assoc($result)){
                                    
                            ?>
                            <option value="<?=$row['id']?>"><?=$row['short_title']?> </option>
                            <?php } ?>
                            </select> 
                        </div>
                    </div>
                    <button type="submit" name="submit">Compare</button>
                </form>
            </div>
            
            <div class="main-txt">
              <h1>Compare <span>Department</span></h1>
            </div> 
          <div class="compare">
                <form action="process2.php" method="post">
                    <div class="compare-section">
                        <div class="left">
                            <select name="dept1" id="dept1">
                            <option value="">Select Department</option>
                            <?php 
                            include_once 'config.php';
                                $sql = "SELECT * FROM academic";
                                $result = mysqli_query($conn,$sql);
                                while($row = mysqli_fetch_assoc($result)){
                            ?>
                            <option value="<?=$row['id']?>"><?=$row['name']?>
                        </option>
                                    
                            <?php } ?>
                            </select>
                        </div>

                        <div class="right">
                            <select name="dept2" id="dept2">
                            <option value="">Select Department</option>
                            <?php 
                            include_once 'config.php';
                                $sql = "SELECT * FROM academic";
                                $result = mysqli_query($conn,$sql);
                                while($row = mysqli_fetch_assoc($result)){
                                    
                            ?>
                            <option value="<?=$row['id']?>"><?=$row['name']?>
                        </option>
                            <?php } ?>
                            </select> 
                        </div>
                    </div>
                    <button type="submit" name="submit">Compare</button>
                </form>
            </div>
            
           
         

          </div>
      </section> 


  





    <?php 
        include_once 'footer.php';
      ?>
 






    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>


