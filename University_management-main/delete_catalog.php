
<?php 
    include_once 'config.php';
    $id = $_GET['id'];
    $sql = "DELETE FROM `catalog` WHERE id = '$id'";
    $result = mysqli_query($conn,$sql);
    if($result){
        header('location:catalog.php');
    } else {
        echo "Error";
    }

?>