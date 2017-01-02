<?php
    require 'database.php';
    $id_makul = $_GET['idmakul'];
    $col = $_GET['col'];
    if(!isset($_GET['rating'])){
        header("Location: ../makul.php?idmakul=$id_makul&col=$col");
    }else{
        if($_GET['rating'] == 'like'){
            $id_review = $_GET['idreview'];            
            $query = mysqli_query($mysqli, "UPDATE `review` SET `membantu` = `membantu`+'1' WHERE `review`.`id_review` = '$id_review'");
            if($query){
                echo "<script>window.location.href='../makul.php?idmakul=$id_makul&col=$col';</script>";    
            }
        }else{
            $id_review = $_GET['idreview'];
            $query = mysqli_query($mysqli, "UPDATE `review` SET `tidak_membantu` = `tidak_membantu`+'1' WHERE `review`.`id_review` = '$id_review'");
            if($query){
                echo "<script>window.location.href='../makul.php?idmakul=$id_makul&col=$col';</script>";    
            }
        }
    }
?>