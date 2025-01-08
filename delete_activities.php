
<?php 
    include_once 'config.php';
    $id = $_GET['id'];
    $sql = "DELETE FROM `activities` WHERE id = '$id'";
    $result = mysqli_query($conn,$sql);
    if($result){
        header("Location: activities.php");
    }else{
        echo "Error";
    }

?>