<?php 
    require 'control/database.php';
    echo'
        <div class="box '.$cboxs[$c++].'">
            <div class="box-header with-border">
                <h3 class="box-title">Semester '.$i.'</h3>
                <div class="pull-right box-tools">
                    <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip">
                    <i class="fa fa-minus"></i></button>
                </div>
            </div>
            <div class="box-body">
    ';
    $colors = array('bg-light-blue', 'bg-red', 'bg-olive', 'bg-yellow', 'bg-navy', 'bg-purple', 'bg-aqua', 'bg-maroon');
    $query = mysqli_query($mysqli, "SELECT * FROM `makul` WHERE tipe_makul='$tipe' AND semester='$i'");
    $j = 0;
    while($makul = $query->fetch_object()){		 
        echo '
            <div class="col-lg-3 col-xs-6">
              <div class="small-box '.$colors[$j].'">
                <div class="inner">
                  <h5>'.$makul->nama_makul.'</h5>
                  <h5>'.$makul->kode_makul.'</h5>
                </div>
                <a href="makul.php?idmakul='.$makul->id_makul.'&col='.$colors[$j++].'" class="small-box-footer">Lihat detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
        ';    
    }
    echo '
            </div>
        </div>
    ';
?>