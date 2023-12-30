
<?php
 include_once 'config.php';
    $id = $_GET['id'];
    $sql = "DELETE FROM faculty WHERE id = '$id'";
    $result = mysqli_query($conn,$sql);
    if($result){
        header('location: faculties.php');
    }else{
        echo "<script>
        alert('Error in deleting faculty');
    </script>";
    }
    


?>