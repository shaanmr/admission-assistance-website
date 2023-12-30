
<?php
include_once 'config.php';
    $id = $_GET['id'];
    $sql = "DELETE FROM administrative WHERE id = '$id'";
    $result = mysqli_query($conn,$sql);
    if($result){
        header('location: administrations.php');
    }else{
        echo "<script>
        alert('Error in deleting administrative');
    </script>";
    }
?>