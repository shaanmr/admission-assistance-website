
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM graduate WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header("Location: view_graduate.php");
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}

?>