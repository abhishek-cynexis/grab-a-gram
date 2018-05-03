<section id="banner-section" class=" animatedParent"  data-sequence='100'>
    <div class="container animated fadeInLeftShort" data-id='1'>
        <div class="row animatedParent"  data-sequence='100'>
            <div class="col-lg-10 col-lg-offset-1 animated fadeInLeftShort" data-id='1'>
                <div class="text-center">
                    <div class="banner ">
                        <img src="<?= assetUrl('images/CANNABIS-icon.png') ?>">
                        <h2 class="banner-title">FORGOT OR CREATE AN ACCOUNT</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="contact-section" class="register-margin-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row animatedParent"  data-sequence='100'>
                    <div class="col-sm-5 animated fadeInLeftShort" data-id='1'>
                        <div class="login-left">
                            <div class="contact-title">
                                <h3>Forgot</h3>
                            </div>
                            <div class="contact-form">
                                <?= form_open('welcome/forgot', array('class' => 'login-form')) ?>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Email Address or Username" type="text"
                                           name="user_name">
                                </div>
                                <div class="forgot-username"> You have login detail? <a href="<?= base_url('welcome/login') ?>"> Click here</a>
                                </div>
                                <button class="btn send-btn" type="submit" name="submit">Submit</button>
                                <?= form_close() ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-6 animated fadeInRightShort" data-id='2'>
                        <div class="login-left">
                            <div class="contact-title">
                                <h3>Register</h3>
                                <p>Registering for an account with Grab-A-Gram is easy. Simply select the<br
                                            class="hidden-xs"> type of account you want to register for and click the
                                    button below to<br class="hidden-xs"> begin the application process.</p>
                            </div>
                            <div class="contact-form">
                                <div class="form-inline">
                                    <label class="label-title">I would like to register as a: </label>
                                    <select class="form-control" id="register_type">
                                        <option value="">Select</option>
                                        <option value="Drivers">Drivers</option>
                                        <option value="Customer">Customer</option>
                                    </select>
                                </div>
                                <button class="btn send-btn register-margin-top" id="register-send-btn">REGISTER
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $(document).on('click', '#register-send-btn', function (e) {
        var register_type = $('#register_type').find(":selected").val();
        if (register_type == 'Customer') {
            window.location.href = '<?=base_url("welcome/customer")?>';
        } else if (register_type == 'Drivers') {
            window.location.href = '<?=base_url("welcome/driver#center-section")?>';
        }
    });
    $(document).on('click', '.send-btn', function (e) {
        $('.send-btn').html('<i class="fa fa-spinner fa-spin" style="font-size: 18px"></i>');
    });
</script>