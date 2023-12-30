






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
    <?php
                    include_once 'config.php';
                    $academic_id = $_GET['academic_id'];
                    $university_id = $_GET['university_id'];
                    $sql = "SELECT * FROM `graduate` WHERE academic_id = '$academic_id' AND university_id = '$university_id'";

                    $result = mysqli_query($conn,$sql);
                    while($row = mysqli_fetch_assoc($result)){
                ?>
        <div class="academic-main-txt">
            <h1><span><?= $row['name']?></span></h1>
        </div>

        <div class="academic-item">
          
            <!-- <div class="academic-details"> -->
            
                    <div class="description">
                      
                        <p><?=$row['description']?></p>
                    </div>
                    
                    <div class="description">
                        <h2>Guideline</h2>
                        <p><?= $row['guideline']?></p>
                    
                    </div>

                    <div class="description">
                        <h2>Distribution</h2>
                        <p><?= $row['distribution']?></p>
                    
                    </div>

                  
            <!-- </div> -->
        </div>
        <?php } ?>
    </div>
    
   
    
 





    <!-- Footer Start -->
    <?php 
        include_once 'footer.php';
      ?>
    <!-- Footer End -->




    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>