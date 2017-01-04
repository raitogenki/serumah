<?php
    require 'database.php';
    if(!isset($_GET['opsi'])){
        header('Location: ../daftarkonfirmasi.php');
    }else{
        if($_GET['opsi'] == 'terima'){
            $id_review = $_GET['idreview'];
            $id_makul = $_GET['idmakul'];
            $query_review = mysqli_query($mysqli, "UPDATE `review` SET `tanggal` = NOW(), `status` = '1' WHERE `review`.`id_review` = '$id_review'");
            $query_makul = mysqli_query($mysqli, "UPDATE `makul` SET `diperbarui` = NOW() WHERE `makul`.`id_makul` = '$id_makul'");
            if($query_review && $query_makul){
                echo "<script> alert('Berhasil menerima request!'); window.location.href='../daftarkonfirmasi.php';</script>";    
            }else{
                echo "<script> alert('Gagal menerima request, silakan mencoba lagi!'); window.location.href='../daftarkonfirmasi.php';</script>";
            }
        }else{
            $id_review = $_GET['idreview'];
            $query_review = mysqli_query($mysqli, "DELETE FROM `review` WHERE `review`.`id_review` = '$id_review'");
            if($query_review){
                echo "<script> alert('Berhasil menolak request!'); window.location.href='../daftarkonfirmasi.php';</script>";    
            }else{
                echo "<script> alert('Gagal menolak request, silakan mencoba lagi!'); window.location.href='../daftarkonfirmasi.php';</script>";
            }
        }
    }
?>