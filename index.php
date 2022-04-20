<?php
session_start();
?>

<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/index.css">

    <title> Home | Spicilla

    </title>
</head>



<body>
    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Spicilla</a>
            </div>

            <div class="collapse navbar-collapse " id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.php">Home</a></li>

                </ul>

                <?php
if (isset($_SESSION['login_user2'])) {
  ?>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome
                            <?php echo $_SESSION['login_user2']; ?> </a></li>
                    <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
                    <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart    
                    </a></li>
                    <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
                </ul>
                <?php        
}
else {

  ?>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="customersignup.php" role="button" aria-haspopup="true" aria-expanded="false"><span
                                class="glyphicon glyphicon-user"></span> Sign Up </a>
                    </li>

                    <li><a href="customerlogin.php" role="button" aria-haspopup="true" aria-expanded="false"><span
                                class="glyphicon glyphicon-log-in"></span> Login </a>
                    </li>
                </ul>
                <?php
}
?>
            </div>
        </div>
    </nav>
    <div class="wide">
        <div class="col-xs-5 line">
            <hr>
        </div>
        <div class="col-xs-2 logo"><img src="css//images/LogoImage.png"></div>
        <div class="col-xs-5 line">
            <hr>
        </div>
        <div class="tagline">Good food for your mood</div>
    </div>

</body>
</html>