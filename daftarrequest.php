<?php 
    session_start(); 
    if(!isset($_SESSION['admin'])){
		header('Location: login.php');
	}
?>

<html>

<head>
  <?php require_once 'layout/head.php'; ?>
</head>

<body class="hold-transition skin-blue-light sidebar-mini">
  <div class="wrapper">
    <?php require_once 'layout/navside.php'; ?>

    <div class="content-wrapper">
        <section class="content">
            <div class="box box-solid">
                <div class="box-header with-border">
                    <h3 class="box-title">Daftar Request</h3>
                </div>
                <div class="box-body">
                    <?php
                        require 'control/database.php';
                        $query_review = mysqli_query($mysqli, "SELECT * FROM `review` WHERE status='0' ORDER BY tanggal ASC");
                        if(mysqli_num_rows($query_review) == 0){
                            echo '<p>Tidak ada request</p>';
                        }else{
                            echo'
                                <table class="table table-hover">
                                    <tr>
                                        <th>Tanggal Request</th>
                                        <th>Username</th>
                                        <th>Mata Kuliah</th>
                                        <th>Opsi</th>
                                    </tr>
                            ';
                            while($review = $query_review->fetch_object()){
                                $id_review = $review->id_review;
                                $id_makul = $review->id_makul;		               
                                echo '
                                    <tr>
                                        <td>'.$review->tanggal.'</td>
                                ';
                                $query_pereview = mysqli_query($mysqli, "SELECT * FROM `user` WHERE id_user='$review->id_user'");
                                if($user = $query_pereview->fetch_object()){
                                    echo '<td>'.$user->username.'</td>';
                                }
                                $query_makul = mysqli_query($mysqli, "SELECT * FROM `makul` WHERE id_makul='$id_makul'");
                                if($makul = $query_makul->fetch_object()){
                                    echo '<td>'.$makul->nama_makul.'</td>';
                                }
                                echo '
                                        <td>
                                            <a href="#lihat'.$id_review.'" class="btn btn-info btn-sm" data-toggle="modal" title="Lihat"><i class="fa fa-eye"> </i></a>
                                            <a href="control/kelolarequest.php?opsi=terima&idreview='.$id_review.'&idmakul='.$id_makul.'" class="btn btn-success btn-sm" title="Terima"><i class="fa fa-check"> </i></a>
                                            <a href="control/kelolarequest.php?opsi=tolak&idreview='.$id_review.'" class="btn btn-danger btn-sm" title="Tolak"><i class="fa fa-close"> </i></a>

                                            <div class="modal fade" id="lihat'.$id_review.'">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title" style="text-align:center">Lihat Review</h4>
                                                            <h4 style="text-align:center">'.$makul->nama_makul.'</h4>
                                                            <h5 style="text-align:center">oleh '.$user->username.'</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <h5>'; echo nl2br($review->isi_review); echo '</h5>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                                                        </div>
                                                    </div>	
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                ';
                            }
                            echo '</table>';
                        }        
                    ?>
                </div>
            </div>
      </section>
    </div>

    <?php require_once 'layout/footer.php'; ?>
  </div>

  <?php require_once 'layout/script.php'; ?>
</body>

</html>