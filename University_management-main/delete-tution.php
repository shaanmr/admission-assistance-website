
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM tution WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("location:tutions.php");
}else{
    echo "error";
}
?>