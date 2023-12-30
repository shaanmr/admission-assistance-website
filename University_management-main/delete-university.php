
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM university WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header('location:universities.php');
}else{
    echo "Error";
}

?>