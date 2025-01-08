
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM achievement WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("Location: achivments.php");
}else{
    echo "Error";
}

?>