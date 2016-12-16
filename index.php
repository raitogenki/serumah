<?php 
  session_start();
  if(isset($_SESSION["admin"])){
    header("Location: daftarrequest.php");
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
          <div class="box-body">
            <img src="dist/img/header.png" alt="">
          </div>
        </div>
        <div class="box box-solid">
          <div class="box-header with-border">
              <h3 class="box-title">Mata Kuliah Terupdate</h3>
          </div>
          <div class="box-body">
          <?php 
            require 'control/database.php';
            $colors = array('bg-blue', 'bg-red', 'bg-green', 'bg-yellow', 'bg-navy', 'bg-purple', 'bg-aqua', 'bg-maroon', 'bg-black');
            $query = mysqli_query($mysqli, "SELECT * FROM `makul` ORDER BY diperbarui DESC LIMIT 8");
            $i = 0;
            while($makul = $query->fetch_object()){		 
                echo '
                    <div class="col-lg-3 col-xs-6">
                      <div class="small-box '.$colors[$i++].'">
                        <div class="inner">
                          <h5>'.$makul->nama_makul.'</h5>
                          <h5>Semester '.$makul->semester.'</h5>
                        </div>
                        <a href="makul.php?idmakul='.$makul->id_makul.'" class="small-box-footer">Lihat detail <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                    </div>
                ';    
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