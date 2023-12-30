<?php 
include_once 'config.php';
session_start();
if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $user_type = $_POST['user_type'];
    $password = md5($_POST['password']);
    $cpassword = md5($_POST['cpassword']);

   

    $select = "SELECT * FROM user_form WHERE email = '$email'&& password = '$password'";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

      $error[] = 'user already exist!';

   }else{

      if($password != $cpassword){
         $error[] = 'password not matched!';
      }else{
         $insert = "INSERT INTO user_form(name, email,phone, password, user_type) VALUES('$name','$email','$phone','$password','$user_type')";
         mysqli_query($conn, $insert);
         header('location:login.php');
      }
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

    <section class="book" id="book">
      <div class="container">

        <div class="main-text">
          <h1><span>R</span>egistration</h1>
        </div>
        
        <div class="row">

          <div class="col-md-6 py-3 py-md-0">
            <div class="card">
              <img src="./images/student.gif" alt="">
            </div>
          </div>

          <div class="col-md-6 py-3 py-md-0 " style="">
            <form action="#" method="post">
                <label for="name" style="font-size:20px;font-weight:600;padding:5px;">Name:</label>
                <input type="text" name="name" class="form-control" placeholder="Enter Your Name" required><br>
                <label for="email" style="font-size:20px;font-weight:600;padding:5px;">Email:</label>
                <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required><br>
                <label for="phone" style="font-size:20px;font-weight:600;padding:5px;">Phone:</label>
                <input type="number" name="phone" class="form-control" placeholder="Enter Your Phone" required><br>
                <label for="password" style="font-size:20px;font-weight:600;padding:5px;">Password:</label>
                <input type="password" name="password" class="form-control" placeholder="Enter Your Password" required><br>
                <label for="cpassword" style="font-size:20px;font-weight:600;padding:5px;">Confirm Password:</label>
                <input type="password" name="cpassword" class="form-control" placeholder="Enter Your Confirm Password" required><br>

                <select name="user_type" class="form-control">
                            <option value="user">user</option>
                            <option value="admin">admin</option>
                </select><br>
            
                <input type="submit" value="Sign Up" name="submit" class="submit" required>

                
                <div class="register">
                    <p>Already have a account <a href="login.php">Login Here</a></p>
                </div>
            </form>
      
          </div>

        </div>
      </div>
    </section>

    <!-- Footer Start -->
    <?php 
        include_once 'footer.php';
      ?>
    <!-- Footer End -->







    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>