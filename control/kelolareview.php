<?php
    session_start();
    require 'database.php';
    if(isset($_POST['tambah'])){
        $id_user = $_SESSION['iduser']; 
        $id_makul = $_POST['idmakul'];
	    $isi_review = $_POST['isireview'];
        $query = mysqli_query($mysqli, "INSERT INTO `review` (`id_review`, `tanggal`, `isi_review`, `id_user`, `id_makul`, `status`, `membantu`, `tidak_membantu`) VALUES (NULL, CURRENT_TIMESTAMP, '$isi_review', '$id_user', '$id_makul', '0', '0', '0')");
        if($query){
			echo "<script> alert('Berhasil menambahkan review untuk dikonfirmasi oleh admin!'); window.location.href='../daftarreview.php';</script>";
		}else{
			echo "<script> alert('Gagal menambahkan review, silakan mencoba lagi!'); wwindow.location.href='../daftarreview.php';</script>";
		}
    }elseif(isset($_POST['edit'])){ 
        $id_review = $_POST['idreview'];
	    $isi_review = $_POST['isireview'];
        $query = mysqli_query($mysqli, "UPDATE `review` SET `tanggal` = NOW(), `isi_review` = '$isi_review', `status` = '0' WHERE `review`.`id_review` = '$id_review'");
        if($query){
			echo "<script> alert('Berhasil mengedit review untuk dikonfirmasi oleh admin!'); window.location.href='../daftarreview.php';</script>";
		}else{
			echo "<script> alert('Gagal mengedit review, silakan mencoba lagi!'); window.location.href='../daftarreview.php';</script>";
		}
    }elseif(isset($_GET['hapus'])){
        $id_review = $_GET['idreview'];
        $query = mysqli_query($mysqli, "DELETE FROM `review` WHERE `review`.`id_review` = '$id_review'");
        if($query){
			echo "<script> alert('Berhasil menghapus review!'); window.location.href='../daftarreview.php';</script>";
		}else{
			echo "<script> alert('Gagal menghapus review, silakan mencoba lagi!'); window.location.href='../daftarreview.php';</script>";
		}
    }else{
        header('Location: ../daftarreview.php');        
    }
?>