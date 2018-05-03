<section id="banner-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 min-height">
                <div class=" animatedParent" data-sequence='100'>
                    <div class="text-center right-title animated bounceIn go" data-id="1">
                        <h2>Advertiser Registration</h2>
                        <div class="row">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8">
                                <div class="contact-form">
                                    <?= form_open('registration/advertiser') ?>
                                    <?= htmlFlash() ?>
                                    <div class="input-group">
                                        <label>Create a Password</label>
                                        <input type="password" class="form-control input-psswd" id="psswd" placeholder="Password" psswd-shown="false" name="password">
                                        <input class="form-control" name="activation_key" type="hidden" value="<?= $advertiser['activation_key'] ?>">
                                        <span class="input-group-btn show-pass">
                                            <button class="btn btn-default fa-eye" type="button"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                        </span>
                                    </div>
                                    <button class="btn send-btn save-btn" type="submit">SUBMIT</button>
                                    <?= form_close() ?>
                                </div>
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?= jquery() ?>
<script>
    $('.fa-eye').on('click', function (e) {
        if ($('.input-psswd').attr('psswd-shown') == 'false') {
            $('.input-psswd').removeAttr('type');
            $('.input-psswd').attr('type', 'text');
            $('.input-psswd').removeAttr('psswd-shown');
            $('.input-psswd').attr('psswd-shown', 'true');
            //$('.fa-eye').html('Hide password');
        } else {
            $('.input-psswd').removeAttr('type');
            $('.input-psswd').attr('type', 'password');
            $('.input-psswd').removeAttr('psswd-shown');
            $('.input-psswd').attr('psswd-shown', 'false');
            //$('.fa-eye').html('Show password');
        }
    });
</script>