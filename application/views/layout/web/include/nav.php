<section id="header">
    <div class="top-header">
        <div class="navbar-wrapper" id="fix-menu">
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="<?= base_url('welcome/index') ?>" class="navbar-brand">
                            <img src="<?= assetUrl('images/logo.png') ?>" class="home-logo img-responsive"/>
                        </a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav navbar-left spacing-menu">
                            <li>
                                <a href="<?= base_url('welcome/about') ?>">about</a>
                            </li>
                            <li class="dropdown">
                                <a href="<?= base_url('welcome/driver') ?>">Drivers</a>
                            </li>
                            <li>
                                <a class="dropdown-toggle" href="<?= base_url('welcome/partner') ?>">Dispensaries </a>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="<?= base_url('welcome/customer') ?>">Customers </a>
                                <!-- <a aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" class="dropdown-toggle" href="<? /*=base_url('welcome/customer')*/ ?>">Customers
                                    <span class="caret"></span> </a>
                                <ul class="dropdown-menu" aria-labelledby="dropdown">
                                    <li><a href="">Customer Registration </a></li>
                                    <li><a href="#">drop down 2</a></li>
                                    <li><a href="#">drop down 3</a></li>
                                    <li><a href="#">drop down 4</a></li>
                                </ul>-->
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right right-menu spacing-menu">
                            <li><a href="<?= base_url('welcome/login') ?>">LOGIN/REGISTER</a></li>
                            <li>
                                <a href="#">My cart<span><i class="fa fa-shopping-bag" aria-hidden="true"></i> 0</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</section>