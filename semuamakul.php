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
                for($i = 1; $i <= 8; $i++){
                    $tipe = 0;
                    require 'layout/tabelmakul.php';
                }
            ?>
        </section>
        <section class="content-header">
            <h1>Mata Kuliah Pilihan</h1>
        </section>
        <section class="content">
            <?php
                for($i = 3; $i <= 7; $i++){
                    $tipe = 1;
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