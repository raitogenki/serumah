<?php 
    require 'control/database.php';
    echo'
        <div class="box box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">Semester '.$i.'</h3>
                <div class="pull-right box-tools">
                    <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip">
                    <i class="fa fa-minus"></i></button>
                </div>
            </div>
            <div class="box-body">
    ';
    $colors = array('bg-red', 'bg-yellow', 'bg-aqua', 'bg-blue', 'bg-light-blue', 'bg-green', 'bg-navy', 'bg-teal', 'bg-olive',
        'bg-lime', 'bg-orange', 'bg-fuchsia', 'bg-purple', 'bg-maroon', 'bg-black');
    $query = mysqli_query($mysqli, "SELECT * FROM `makul` WHERE tipe_makul='$tipe' AND semester='$i'");
    while($makul = $query->fetch_object()){		 
        echo '
            <div class="col-lg-3 col-xs-6">
              <div class="small-box '.$colors[array_rand($colors)].'">
                <div class="inner">
                  <h5>'.$makul->nama_makul.'</h5>
                  <h5>'.$makul->kode_makul.'</h5>
                </div>
                <a href="makul.php?idmakul='.$makul->id_makul.'" class="small-box-footer">Lihat detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
        ';    
    }
    echo '
            </div>
        </div>
    ';
?>