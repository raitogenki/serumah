<?php
 	$db_name = "serumah";
	$db_server = "localhost";
	$db_user = 'root';
	$db_pass = '';
	 
	$mysqli = new MySQLi($db_server, $db_user, $db_pass, $db_name) or die(mysqli_error());
?>