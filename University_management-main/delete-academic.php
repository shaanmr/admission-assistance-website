
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM academic WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("Location: academics.php");
}else{
    echo "<script>alert('Academic Deleted Failed')</script>";
}

?>