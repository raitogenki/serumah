<?php
    require 'database.php';
    if(!isset($_GET['opsi'])){
        header('Location: ../daftarrequest.php');
    }else{
        if($_GET['opsi'] == 'terima'){
            $id_review = $_GET['idreview'];
            $id_makul = $_GET['idmakul'];
            $query_review = mysqli_query($mysqli, "UPDATE `review` SET `tanggal` = NOW(), `status` = '1' WHERE `review`.`id_review` = '$id_review'");
            $query_makul = mysqli_query($mysqli, "UPDATE `makul` SET `diperbarui` = NOW() WHERE `makul`.`id_makul` = '$id_makul'");
            if($query_review && $query_makul){
                echo "<script> alert('Terima request berhasil!'); window.location.href='../daftarrequest.php';</script>";    
            }else{
                echo "<script> alert('Terima request gagal!'); window.location.href='../daftarrequest.php';</script>";
            }
        }else{
            $id_review = $_GET['idreview'];
            $query_review = mysqli_query($mysqli, "DELETE FROM `review` WHERE `review`.`id_review` = '$id_review'");
            if($query_review){
                echo "<script> alert('Tolak request berhasil!'); window.location.href='../daftarrequest.php';</script>";    
            }else{
                echo "<script> alert('Tolak request gagal!'); window.location.href='../daftarrequest.php';</script>";
            }
        }
        
    }
?>