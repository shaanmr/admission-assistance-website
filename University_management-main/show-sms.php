


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Assistance</title>

    <link rel="stylesheet" href="css/style.css">
     <link rel="stylesheet" href="css/admin.css">

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
        <!-- About Start -->

    <!-- About End -->
    <div class="table">
                <h1>Contacts</h1>
              
            <table>

                    <tr>

                        <th>S.No</th>

                        <th>Name</th>

                        <th>Email</th>

                        <th>Phone</th>
                        <th>Text</th>

                    </tr>
                    <?php 
                    include_once 'config.php';
                   
                    $sql = "SELECT * FROM contact";
                    $result = mysqli_query($conn,$sql);
                    $id = 1;
                    while ($row = mysqli_fetch_assoc($result)){
                    ?>

                    <tr>

                        <td><?= $id++ ?></td>

                        <td><?= $row['name']?></td>

                        <td><?= $row['email']?></td>

                        <td><?= $row['phone']?></td>

                        <td><p style="width: 300px;white-space:break-spaces;text-align:center;"><?= $row['text'] ?></p></td>

                    </tr>
                    <?php } ?>

                    </table>
            </div>



    <!-- Footer Start -->
    <?php 
        include_once 'footer.php';
      ?>
    <!-- Footer End -->







    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>