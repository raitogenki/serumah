<?php
	session_start();
	require 'database.php';
	if(!isset($_POST['login'])){
		header('Location: ../index.php');
	}else{
		$username = $_POST['username'];
		$password = $_POST['password'];
		if($username == 'admin'){
			$type = 0;
			$tabel = 'admin';
		}else{
			$type = 1;
			$tabel = 'user';
		}
		$query = mysqli_query($mysqli, "SELECT * FROM `$tabel` WHERE username = '$username'");
		if(mysqli_num_rows($query) == 0) {
			echo "<script> alert('Gagal masuk, username tidak terdaftar!'); window.location.href='../login.php';</script>";
		} else {
			$query = mysqli_query($mysqli, "SELECT * FROM `$tabel` WHERE username = '$username' AND password = '$password'");
			if(mysqli_num_rows($query) == 0) {
				echo "<script> alert('Gagal masuk, password yang dimasukkan salah!'); window.location.href='../login.php';</script>";
			}else{
				if($type == 0){
					$_SESSION['admin'] = $username;
					header("Location: ../daftarkonfirmasi.php");
				}else{
					$_SESSION['user'] = $username;
					$user = $query->fetch_object();
					$_SESSION['iduser'] = $user->id_user;
					$_SESSION['nama'] = $user->nama_lengkap;
					header("Location: ../index.php");
				}
			}
		}
	}
?>