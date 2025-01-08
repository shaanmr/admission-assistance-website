
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM categories WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("Location: categories.php");
}else{
    echo  "<script>alert('Category Deleted Failed')</script>";
}

?>