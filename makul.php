<?php 
    session_start();
    if(!isset($_GET["idmakul"])){
        header("Location: index.php");
    }else{
        $id = $_GET["idmakul"];
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
        <?php
            require 'control/database.php';
            $colors = array('bg-red', 'bg-yellow', 'bg-aqua', 'bg-blue', 'bg-light-blue', 'bg-green', 'bg-navy', 'bg-teal',
                'bg-olive', 'bg-lime', 'bg-orange', 'bg-fuchsia', 'bg-purple', 'bg-maroon', 'bg-black');
            $query = mysqli_query($mysqli, "SELECT * FROM `makul` WHERE id_makul='$id'");
            while($makul = $query->fetch_object()){		 
                echo '
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">Informasi Mata Kuliah</h3>
                        </div>
                        <div class="box-body">
                            <div class="col-lg-12 col-xs-12 '.$colors[array_rand($colors)].'" style="display:table; height:200px;">
                                <div style="display:table-cell; text-align:center; vertical-align:middle;">
                                    <h1>'.$makul->nama_makul.'</h1>
                                </div>
                            </div>
                            &nbsp;
                            <p>'.$makul->deskripsi_makul.'</p>
                        </div>
                    </div>
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">Review</h3>
                ';
                if(isset($_SESSION['user'])){
                    $username = $_SESSION['user'];
                    $query = mysqli_query($mysqli, "SELECT * FROM `user` WHERE username='$username'");
                    $user = $query->fetch_object();
                    $query = mysqli_query($mysqli, "SELECT * FROM `review` WHERE id_makul='$id' AND id_user='$user->id_user'");
                    if(mysqli_num_rows($query) == 0){
                        echo '
                            <div class="pull-right box-tools">
                                <a href="#tambah" class="btn btn-primary btn-sm" data-toggle="modal"><i class="fa fa-plus"></i> Tambah Review</a>
                            </div>
                            <div class="modal fade" id="tambah">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" style="text-align:center">Tambah Review</h4>
                                            <h4 style="text-align:center">'.$makul->nama_makul.'</h4>
                                            <h5 style="text-align:center">oleh '.$user->nama_lengkap.'</h5>
                                        </div>
                                        <div class="modal-body">
                                            <form role="form">
                                                <div class="form-group">
                                                    <textarea class="form-control" rows="7" placeholder="Tulis review ..."></textarea>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Batal</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">Request Review</button>
                                        </div>
                                    </div>	
                                </div>
                            </div>
                        ';
                    }
                }
                echo '
                    </div>
                    <div class="box-body">
                        
                ';
                $query = mysqli_query($mysqli, "SELECT * FROM `review` WHERE id_makul='$id' AND status='1' ORDER BY tanggal DESC");
                if(mysqli_num_rows($query) == 0){
                    echo '<p>Belum ada review</p>';
                }
                else{
                    echo '
                        <table class="table table-hover">
                            <tr>
                                <th>Nama</th>
                                <th>Review</th>
                                <th>Opsi</th>
                            </tr>
                    ';
                    while($review = $query->fetch_object()){
                        $query = mysqli_query($mysqli, "SELECT * FROM `user` WHERE id_user='$review->id_user'");
                        $user = $query->fetch_object();
                        echo '
                            <tr>
                                <td>'.$user->nama_lengkap.'</td>
                                <td>'.$review->isi_review.'</td>
                                <td>
                                    <a href="" class="btn btn-success btn-sm" title="Membantu"><i class="fa fa-thumbs-o-up"> </i></a>
                                    <a href="" class="btn btn-danger btn-sm" title="Tidak Membantu"><i class="fa fa-thumbs-o-down"> </i></a>
                                </td>
                            </tr>
                        ';
                    }
                    echo '</table>';
                }
                echo '
                        </div>
                    </div>
                ';
            }
        ?>
      </section>
    </div>

    <?php require_once 'layout/footer.php'; ?>
  </div>

  <?php require_once 'layout/script.php'; ?>
</body>

</html>