<?php
    // Enter your host name, database username, password, and database name.
    // If you have not set database password on localhost then set empty.
$con = mysqli_connect("127.0.0.1","root","fas96","eswt");
    // Check connection
if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$select_db = mysqli_select_db($con,'ESWT');

?>