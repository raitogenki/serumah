<header class="main-header">
    <a href="index.php" class="logo">
        <span class="logo-mini"><img src="dist/img/logo-mini-w.png" alt=""></span>
        <span class="logo-lg"><b>Serumah</b>-IF UNS</span>
    </a>
    <nav class="navbar navbar-static-top">
        <a href="" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
    </nav>
</header>

<aside class="main-sidebar">
    <section class="sidebar">
        <?php
            if(isset($_SESSION['admin']) || isset($_SESSION['user'])){
                if(isset($_SESSION['nama'])){
                    $nama = $_SESSION['nama'];
                }else{
                    $nama = 'Admin';
                }
                echo '
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="dist/img/user-avatar.jpg" class="img-circle">
                        </div>
                        <div class="pull-left info">
                            <p>'.$nama.'</p>
                            <a><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                ';
            }
        ?>
        <ul class="sidebar-menu">
            <li class="header">MENU UTAMA</li>
            <?php
                if(!isset($_SESSION['admin'])){
                    echo '
                        <li><a href="index.php"><i class="fa fa-home"></i><span>Home</span></a></li>
                        <li class="treeview">
                            <a href="">
                                <i class="fa fa-server"></i>
                                <span>Daftar Mata Kuliah</span>
                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="semuamakul.php"><i class="fa fa-circle-o"></i> Semua Mata Kuliah</a></li>
                                <li><a href="makulwajib.php"><i class="fa fa-circle-o"></i> Mata Kuliah Wajib</a></li>
                                <li><a href="makulpilihan.php"><i class="fa fa-circle-o"></i> Mata Kuliah Pilihan</a></li>
                            </ul>
                        </li>
                    ';
                }
                if(isset($_SESSION['admin'])){
                    echo '
                        <li><a href="daftarrequest.php"><i class="fa fa-user"></i><span>Daftar Request</span></a></li>
                        <li><a href="control/logout.php"><i class="fa fa-arrow-left"></i><span>Logout</span></a></li>
                    ';
                }elseif(isset($_SESSION['user'])){
                    echo '
                        <li><a href="daftarreview.php"><i class="fa fa-user"></i><span>Daftar Review</span></a></li>
                        <li><a href="control/logout.php"><i class="fa fa-arrow-left"></i><span>Logout</span></a></li>
                    ';
                }else{
                    echo '
                        <!--li><a href="#"><i class="fa fa-book"></i><span>Tentang Serumah</span></a></li-->
                        <li><a href="login.php"><i class="fa fa-arrow-right"></i><span>Login</span></a></li>
                    ';
                }
            ?>
        </ul>
    </section>
</aside>