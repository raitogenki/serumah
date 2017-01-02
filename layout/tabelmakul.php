<?php
    require 'control/database.php';
    echo '
        <div class="box '.$cboxs[$c++].'">
                <div class="box-header">
                    <h3 class="box-title">Semester '.$i.'</h3>
                    <div class="pull-right box-tools">
                        <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip">
                        <i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <table class="table table-hover">
                        <tr>
                            <th>Kode</th>
                            <th>Nama</th>
                            <th>Prasyarat</th>
                            <th>SKS</th>
                            <th>Teori</th>
                            <th>Praktikum</th>
                        </tr>
    ';
    $query = mysqli_query($mysqli, "SELECT * FROM `makul` WHERE tipe_makul='$tipe' AND semester='$i'");
    while($makul = $query->fetch_object()){		               
        echo '
            <tr>
                <td>'.$makul->kode_makul.'</td>
                <td>'.$makul->nama_makul.'</td>
                <td>'.$makul->prasyarat.'</td>
                <td>'.$makul->sks.'</td>
                <td>'.$makul->teori.'</td>
                <td>'.$makul->praktikum.'</td>
            </tr>
        ';
    }
    echo'
                </table>
            </div>
        </div>       
    ';

?>