
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM alumni WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header('location:alumnis.php');
}else{
    echo "Error";
}

?>