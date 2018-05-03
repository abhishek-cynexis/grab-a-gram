<div class="footer" id="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row animatedParent"  data-sequence='200'>
                    <div class="col-sm-4 animated fadeInLeftShort" data-id='1'>
                        <div class="contact hidden-xs">
                            <img src="<?= assetUrl('web/images/footer-logo.png') ?>" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-sm-4 animated fadeInLeftShort" data-id='2'>
                        <div class="contact">
                            <ul class="col-sm-6 white-text">
                                <li><a href="<?= base_url('welcome/partner') ?>">DISPENSARIES</a></li>
                                <li><a href="<?= base_url('welcome/driver') ?>">DRIVERS </a></li>
                                <li><a href="<?= base_url('welcome/customer') ?>">CUSTOMERS </a></li>
                                <li><a href="<?= base_url('welcome/about') ?>">ABOUT US</a></li>
                            </ul>
                            <ul class="col-sm-6 gray-text ">
                                <li><a href="<?= base_url('welcome/advertiser') ?>">ADVERTISE WITH US</a></li>
                                <li><a href="<?= base_url('welcome/blog') ?>">BLOG </a></li>
                                <li><a href="<?= base_url('welcome/contact') ?>">CONTACT US </a></li>
                                <li><a href="<?= base_url('welcome/career') ?>">CAREERS</a></li>
                                <li><a href="javascript:void(0)">EMPLOYEE ACCESS</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4 animated fadeInRightShort" data-id='3'>
                        <div class="contact">
                            <p>Join Our Newsletter</p>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter email address">
                                <span class="input-group-btn">
                                        <button class="btn join-btn" type="button">join</button>
                                      </span>
                            </div>
                            <div class="social-media">
                                <div class="text-right">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="bottom-links">
                                <ul>
                                    <li><a href="#">Terms of Use</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="copy-right-text">
                                <div class="text-right">
                                    2016 © Grab-A-Gram. All Rights Reserved
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<?= assetUrl('web/js/bootstrap.min.js') ?>"></script>
<script src='<?= assetUrl('web/js/css3-animate-it.js') ?>'></script>
<script src="<?= assetUrl('web/js/owl.carousel.min.js') ?>"></script>
<?php getJavascript() ?>
<script>
    $(document).on('click', '.btn-spinner', function (e) {
        $(this).html('<i class="fa fa-spinner fa-spin" style="font-size:18px"></i> Processing...');
    });
    $(document).ready(function () {
        $(".drop-menu").hover(
            function () {
                $(this).addClass("open");
            },
            function () {
                $(this).removeClass("open");
            }
        );
    });
    function successAlert(message) {
        $.each(message, function (index, value) {
            $(document).ready(function () {
                setTimeout(function () {
                    toastr.options = {
                        closeButton: true,
                        progressBar: true,
                        showMethod: 'slideDown',
                        positionClass: 'toast-bottom-right',
                        timeOut: 5000
                    };
                    toastr.success(value);
                }, 1300);
            });
        });
    }
    function errorAlert(message) {
        $.each(message, function (index, value) {
            $(document).ready(function () {
                setTimeout(function () {
                    toastr.options = {
                        closeButton: true,
                        progressBar: true,
                        showMethod: 'slideDown',
                        positionClass: 'toast-bottom-right',
                        timeOut: 5000
                    };
                    toastr.error(value);
                }, 1300);
            });
        });
    }
    $(document).ajaxError(function (event, jqxhr, settings, thrownError) {
        if (jqxhr.responseJSON.message) {
            errorAlert(jqxhr.responseJSON.message);
            NProgress.done();
        }
    });
</script>
</body>
</html>