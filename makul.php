<?php 
    session_start();
    if(!isset($_GET['idmakul']) || !isset($_GET['col'])){
        header('Location: index.php');
    }else{
        $id_makul = $_GET['idmakul'];
        $col = $_GET['col'];
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
            $query_makul = mysqli_query($mysqli, "SELECT * FROM `makul` WHERE id_makul='$id_makul'");
            while($makul = $query_makul->fetch_object()){		 
                echo '
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">Informasi Mata Kuliah</h3>
                        </div>
                        <div class="box-body">
                            <div class="col-lg-12 col-xs-12 '.$col.'" style="display:table; height:240px;">
                                <div style="display:table-cell; text-align:center; vertical-align:middle;">
                                    <h1 style="font-size:72px">'.strtoupper($makul->nama_makul).'</h1>
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
                    $id_user = $_SESSION['iduser'];
                    $query_cekreview = mysqli_query($mysqli, "SELECT * FROM `review` WHERE id_makul='$id_makul' AND id_user='$id_user'");
                    if(mysqli_num_rows($query_cekreview) == 0){
                        echo '
                            <div class="pull-right box-tools">
                                <a href="#tambah" class="btn btn-primary btn-sm" data-toggle="modal"><i class="fa fa-plus"></i> Tambah Review</a>
                            </div>
                            <div class="modal fade" id="tambah">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form role="form" action="control/kelolareview.php" method="post">
                                            <div class="modal-header">
                                                <h4 class="modal-title" style="text-align:center">Tambah Review Mata Kuliah</h4>
                                                <h4 style="text-align:center">'.$makul->nama_makul.'</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <input type="hidden" name="idmakul" value="'.$id_makul.'">
                                                    <textarea type="text" name="isireview" class="form-control" rows="14" placeholder="Tulis review ..." required></textarea>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Batal</button>
                                                <button type="submit" name="tambah" class="btn btn-primary">Selesai</button>
                                            </div>
                                        </form>
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
                $query_review = mysqli_query($mysqli, "SELECT * FROM `review` WHERE id_makul='$id_makul' AND status='1' ORDER BY tanggal DESC");
                if(mysqli_num_rows($query_review) == 0){
                    echo '<p>Tidak ada review</p>';
                }
                else{
                    echo '<ul class="timeline">';
                    while($review = $query_review->fetch_object()){
                        $id_review = $review->id_review;
                        $query_pereview = mysqli_query($mysqli, "SELECT * FROM `user` WHERE id_user='$review->id_user'");
                        $user = $query_pereview->fetch_object();
                        $colors = array('bg-red', 'bg-yellow', 'bg-aqua', 'bg-blue', 'bg-light-blue', 'bg-green', 'bg-navy',
                            'bg-teal', 'bg-olive', 'bg-orange', 'bg-purple', 'bg-maroon',);
                        $color = $colors[array_rand($colors)];
                        $toggle = '';
                        if(isset($_SESSION['user']) && $_SESSION['user'] == $user->username){
                            $toggle = 'disabled';
                        }
                        echo '
                            <li>
                                <i class="fa fa-edit '.$color.'"></i>
                                <div class="timeline-item">
                                    <span class="time '.$color.'"><i class="fa fa-clock-o"></i> '; echo date("d M Y H:i", strtotime($review->tanggal)); echo '</span>
                                    <h3 class="timeline-header"><a>'.$user->nama_lengkap.'</a></h3>
                                    <div class="timeline-body">
                                        '; echo nl2br($review->isi_review); echo '
                                    </div>
                                    <div class="timeline-footer">
                                        <a href="control/berirating.php?rating=like&idmakul='.$id_makul.'&col='.$col.'&idreview='.$id_review.'" class="btn btn-success btn-sm '.$toggle.'" title="Membantu"><i class="fa fa-thumbs-o-up"> '.$review->membantu.'</i></a>
                                        <a href="control/berirating.php?rating=dislike&idmakul='.$id_makul.'&col='.$col.'&idreview='.$id_review.'" class="btn btn-danger btn-sm '.$toggle.'" title="Tidak Membantu"><i class="fa fa-thumbs-o-down"> '.$review->tidak_membantu.'</i></a>
                                    </div>
                                </div>
                            </li>
                        ';
                    }
                    echo '</ul>';
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