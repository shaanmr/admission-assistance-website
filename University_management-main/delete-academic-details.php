
<?php 
 include_once 'config.php';
    $id = $_GET['id'];
    $sql = "DELETE FROM subject WHERE id = '$id'";
    $result = mysqli_query($conn,$sql);
    if($result){
        header("Location:academic_details.php");
    }
    else{
        echo "<script>alert('Something went wrong')</script>";
    }
?>