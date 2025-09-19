<?php

$conn=mysqli_connect("localhost","root","","admin");
if(!$conn){
    die("Connection failed1");
}

$username=$_POST['username'];
$password=$_POST['password'];
 
$sql="SELECT * from employeestable where username='$username' and password='$password'";
$result=mysqli_query($conn,$sql);

if(mysqli_num_rows($result)> 0 ){
   echo"succesfully login!";
   exit();
}
else{
    echo"failed to login";
}
mysqli_close($conn);

?>