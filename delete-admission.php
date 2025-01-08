
<?php 
include_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM admission WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
if($result){
    header('location: admission.php');
}else{
    echo "<script>
    alert('Error in deleting admission');
    </script>";
}
?>