<?php session_start(); ?>

<html>

<head>
  <?php require_once 'layout/head.php'; ?>
</head>

<body class="hold-transition skin-blue-light sidebar-mini">
  <div class="wrapper">
     <?php require_once 'layout/navside.php'; ?>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>Mata Kuliah Wajib</h1>
        </section>
        <section class="content">
            <?php
                $cboxs = array('box-primary', 'box-danger', 'box-success', 'box-warning', 'box-info');
                $tipe = 0; $c = 0;
                for($i = 1; $i <= 8; $i++){
                    if($i == 6){ $c = 0; } 
                    require 'layout/tabelmakul.php';
                }
            ?>
        </section>
        <section class="content-header">
            <h1>Mata Kuliah Pilihan</h1>
        </section>
        <section class="content">
            <?php
                $tipe = 1; $c = 0;
                for($i = 3; $i <= 7; $i++){
                    require 'layout/tabelmakul.php';
                }
            ?>
        </section>
    </div>

    <?php require_once 'layout/footer.php'; ?>
  </div>

  <?php require_once 'layout/script.php'; ?>
</body>

</html>