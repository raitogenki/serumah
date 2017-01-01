<?php
    session_start();
    require 'database.php';
    if(isset($_POST['tambah'])){
        $id_user = $_SESSION['iduser']; 
        $id_makul = $_POST['idmakul'];
	    $isi_review = $_POST['isireview'];
        $query = mysqli_query($mysqli, "INSERT INTO `review` (`id_review`, `tanggal`, `isi_review`, `id_user`, `id_makul`, `status`, `membantu`, `tidak_membantu`) VALUES (NULL, CURRENT_TIMESTAMP, '$isi_review', '$id_user', '$id_makul', '0', '0', '0')");
        if($query){
			echo "<script> alert('Request review berhasil!'); window.location.href='../makul.php?idmakul=$id_makul';</script>";
		}else{
			echo "<script> alert('Request review gagal!'); window.location.href='../makul.php?idmakul=$id_makul';</script>";
		}
    }elseif(isset($_POST['edit'])){ 
        $id_review = $_POST['idreview'];
	    $isi_review = $_POST['isireview'];
        $query = mysqli_query($mysqli, "UPDATE `review` SET `tanggal` = NOW(), `isi_review` = '$isi_review', `status` = '0' WHERE `review`.`id_review` = '$id_review'");
        if($query){
			echo "<script> alert('Edit review berhasil!'); window.location.href='../daftarreview.php';</script>";
		}else{
			echo "<script> alert('Edit review gagal!'); window.location.href='../daftarreview.php';</script>";
		}
    }elseif(isset($_GET['hapus'])){
        $id_review = $_GET['idreview'];
        $query = mysqli_query($mysqli, "DELETE FROM `review` WHERE `review`.`id_review` = '$id_review'");
        if($query){
			echo "<script> alert('Hapus review berhasil!'); window.location.href='../daftarreview.php';</script>";
		}else{
			echo "<script> alert('Happus review gagal!'); window.location.href='../daftarreview.php';</script>";
		}
    }else{
        header('Location: ../daftarreview.php');        
    }
?>