
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM faculty_member WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("Location: faculty-members.php");
}else{
    echo "<script>alert('Something went wrong!')</script>";
}

?>