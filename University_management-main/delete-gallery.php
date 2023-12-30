
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM gallery WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("Location: view-gallery.php");
}else{
    echo  "<script>alert('Gallery Deleted Failed')</script>";
}

?>