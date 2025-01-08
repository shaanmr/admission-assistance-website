
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM top_university WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header('location:top-universities.php');
}else{
    echo "Error";
}
?>