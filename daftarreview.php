<?php 
    session_start(); 
    if(!isset($_SESSION["user"])){
		header("Location: login.php");
	}else{
        $username = $_SESSION['user'];
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
                    <h3 class="box-title">Daftar Review</h3>
                </div>
                <div class="box-body">
                    <?php
                        require 'control/database.php';
                        $query = mysqli_query($mysqli, "SELECT * FROM `user` WHERE username='$username'");
                        if($user = $query->fetch_object()){		                                           
                            $query = mysqli_query($mysqli, "SELECT * FROM `review` WHERE id_user='$user->id_user' AND status='1' ORDER BY tanggal DESC");
                            if(mysqli_num_rows($query) == 0){
                                echo '<p>Tidak ada review</p>';
                            }else{
                                echo '
                                    <table class="table table-hover">
                                        <tr>
                                            <th>Tanggal Diterima</th>
                                            <th>Mata Kuliah</th>
                                            <th>Membantu</th>
                                            <th>Tidak Membantu</th>
                                            <th>Opsi</th>
                                        </tr>
                                ';
                                while($review = $query->fetch_object()){		               
                                    echo '
                                        <tr>
                                            <td>'.$review->tanggal.'</td>
                                    ';
                                    $query = mysqli_query($mysqli, "SELECT * FROM `makul` WHERE id_makul='$review->id_makul'");
                                    if($makul = $query->fetch_object()){
                                        echo '
                                            <td>'.$makul->nama_makul.'</td>
                                        ';
                                    }
                                    echo '
                                            <td>'.$review->membantu.'</td>
                                            <td>'.$review->tidak_membantu.'</td>
                                            <td>
                                                <a href="#lihat" class="btn btn-info btn-sm" data-toggle="modal" title="Lihat"><i class="fa fa-eye"> </i></a>
                                                <a href="#edit" class="btn btn-warning btn-sm" data-toggle="modal" title="Edit"><i class="fa fa-edit"> </i></a>
                                                <a href="" class="btn btn-danger btn-sm" title="Hapus"><i class="fa fa-trash"> </i></a>

                                                <div class="modal fade" id="lihat">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" style="text-align:center">Lihat Review</h4>
                                                                <h4 style="text-align:center">'.$makul->nama_makul.'</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <h5>'.$review->isi_review.'</h5>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                                                            </div>
                                                        </div>	
                                                    </div>
                                                </div>
                                                <div class="modal fade" id="edit">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" style="text-align:center">Edit Review</h4>
                                                                <h4 style="text-align:center">'.$makul->nama_makul.'</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form role="form">
                                                                    <div class="form-group">
                                                                        <textarea class="form-control">'.$review->isi_review.'</textarea>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Batal</button>
                                                                <button type="button" class="btn btn-primary" data-dismiss="modal">Simpan</button>
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