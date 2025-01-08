<?php
include_once 'config.php';
session_start();
if(isset($_POST['submit'])){
    $email = $_POST['email'];
    $password = md5($_POST['password']);
    $select = "SELECT * FROM user_form WHERE email = '$email'&& password = '$password'";
    $result = mysqli_query($conn, $select);
    if(mysqli_num_rows($result) > 0){
        $row = mysqli_fetch_array($result);
        if($row['user_type'] == 'admin'){
            $_SESSION['admin_name'] = $row['name'];
            header('location:admin.php');
        }else{
            $_SESSION['user_name'] = $row['name'];
            header('location:wish.php');
        }
    }else{
        $error[] = 'invalid email or password!';
    }
       
}

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Assistance</title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">

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


      <div class="login-box">
              <div class="main-text-l">
                <h1><span>L</span>og In</h1>
              </div>
              <div class="box-item">
                <span class="borderLine"></span>
              <form action="" method="post">
                <div class="inputBox">
                  <input type="email" name="email"  required>
                  <span>Email</span>
                  <i></i>
                </div>

                <div class="inputBox">
                  <input type="password" name="password"  required>
                  <span>Password</span>
                  <i></i>
                </div>

                <div class="links">
                  <a href="">Forgot Password</a>
                  <a href="registration.php">Signup</a>
                </div>
                <input class="frm-btn" type="submit" name="submit" value="login">
              </form>
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