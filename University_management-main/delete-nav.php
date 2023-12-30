
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM nav WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("Location: navs.php");
}else{
    echo  "<script>alert('Nav Deleted Failed')</script>";
}
?>

