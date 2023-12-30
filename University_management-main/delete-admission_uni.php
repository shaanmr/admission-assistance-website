
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM admission_go WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header('location:admission_uni.php');
}else{
    echo "Error";
}
?>