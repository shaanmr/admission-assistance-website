
<?php 
    include_once 'config.php';
    $id = $_GET['id'];
    $sql = "DELETE FROM `dept_review` WHERE id = '$id'";
    $result = mysqli_query($conn,$sql);
    if($result){
        header('location:sub_reviews.php');
    }else{
        echo "Error";
    }
?>