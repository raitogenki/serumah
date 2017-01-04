<html>

<head>
    <?php require_once 'layout/head.php'; ?>
    <style>
        .login-page {
            background-image: url("dist/img/symphony.png");
            background-repeat: repeat;
            min-height: 50%;
        }
    </style>
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <a href="index.php"><b>Serumah</b>-IF UNS</a>
        </div>
        <div class="login-box-body">
            <p class="login-box-msg">Masukkan Username/NIM dan password anda</p>
            <form action="control/ceklogin.php" method="post">
                <div class="form-group has-feedback">
                    <input type="text" name="username" class="form-control" placeholder="Username/NIM" required autofocus>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password" class="form-control" placeholder="Password" required>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <button type="submit" name="login" class="btn btn-primary btn-block btn-flat">Masuk</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>