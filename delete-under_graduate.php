
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM under_graduate WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("Location:un_gra_programs.php");
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}

?>