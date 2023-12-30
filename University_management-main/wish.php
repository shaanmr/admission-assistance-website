<?php 
include_once 'config.php';
session_start();
if(!isset($_SESSION['user_name'])){
  header('location:login.php');
}
?>

<?php 
include_once 'config.php';
if(isset($_GET['remove'])){
    $id = $_GET['remove'];
    $sql = "DELETE FROM wish WHERE id = '$id'";
    $result = mysqli_query($conn,$sql);
    if($result){
        header('location:wish.php');
    }else{
        echo "<script>alert('Wish not removed')</script>";
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
              <h1>My <span>Wish</span></h1>
            </div>
            <div class="wish-card">
                <table>
                    <thead>
                        <th>Sl No</th>
                        <th>University Name</th>
                        <th>Short Title</th>
                        <th>Image</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                        <?php 
                            include_once 'config.php';
                            $sql = "SELECT * FROM wish";
                            $id = 1;
                            $result = mysqli_query($conn,$sql);
                            while($row = mysqli_fetch_assoc($result)){
                        ?>
                        <tr>
                            <td><?= $id++ ?></td>
                            <td><?= $row['full_name']?></td>
                            <td><?= $row['name']?></td>
                            <td><img src="<?= $row['image']?>"></td>
                            <td>
                            <a href="wish.php?remove=<?= $row['id'] ?>" class="delete_btn"
                                            style="display:flex; flex-direction:column;text-decoration:none;"
                                            onclick="return confirm('are you sure you want to delete this product?');"><i
                                                class="fa-solid fa-trash"></i>Delete</a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>

           
            

          </div>
      </section>

  





    <?php 
        include_once 'footer.php';
      ?>
 






    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>


