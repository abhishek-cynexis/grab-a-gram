<section id="banner-section" class=" animatedParent"  data-sequence='100'>
    <div class="container animated fadeInLeftShort" data-id='1'>
        <div class="row animatedParent"  data-sequence='100'>
            <div class="col-lg-10 col-lg-offset-1 animated fadeInLeftShort" data-id='1'>
                <div class="text-center">
                    <div class="banner ">
                        <img src="<?= assetUrl('images/CANNABIS-icon.png') ?>">
                        <h2 class="banner-title">Advertise With Us</h2>
                        <span class="sub-title">Get Seen Through The GRAB-A-GRAM app</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-banner animated fadeInRightShort" data-id='1'
         style="background-image:url('<?= assetUrl('images/advertise-banner.jpg') ?>');">
    </div>
</section>
<section id="partner-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row animatedParent"  data-sequence='100'>
                    <div class="col-sm-6 animated fadeInLeftShort" data-id='1'>
                        <div class="page-content">
                            <div class="main-page-title">
                                <h1>Reach Out With Grab-A-Gram</h1>
                                <div class="sub-heading">There’s a Whole Audience Out There, Waiting to be Reached</div>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget
                                dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
                                sem.
                            </p>
                            <p>Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate
                                eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam
                                dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.</p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="customer-section">
                                        <div class="text-center">
                                            <div class="cusomer-img"><img
                                                        src="<?= assetUrl('images/group-icon.png') ?>"></div>
                                            <div class="customer-title"><h3>BENEFIT NUMBER 1 </h3></div>
                                            <div class="customer-details">
                                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
                                                    commodo ligula eget dolor</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="customer-section">
                                        <div class="text-center">
                                            <div class="cusomer-img"><img
                                                        src="<?= assetUrl('images/mobile-phone-icon.png') ?>">
                                            </div>
                                            <div class="customer-title"><h3>More Vssibility</h3></div>
                                            <div class="customer-details">
                                                <p>Advertise with Grab-a-Gram to expand your online presence</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row top-spce">
                                <div class="col-sm-6">
                                    <div class="customer-section">
                                        <div class="text-center">
                                            <div class="cusomer-img"><img
                                                        src="<?= assetUrl('images/information.png') ?>"></div>
                                            <div class="customer-title"><h3>BENEFIT NUMBER 2</h3></div>
                                            <div class="customer-details">
                                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
                                                    commodo ligula eget dolor</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="customer-section">
                                        <div class="text-center">
                                            <div class="cusomer-img"><img
                                                        src="<?= assetUrl('images/organization.png') ?>"></div>
                                            <div class="customer-title"><h3>BENEFIT NUMBER 3</h3></div>
                                            <div class="customer-details">
                                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
                                                    commodo ligula eget dolor</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 animated fadeInRightShort" data-id='2'>
                        <div class="contact-gray">
                            <div class="right-title">
                                <div class="text-center">
                                    <h3>INTERESTED IN ADVERTISING?</h3>
                                    <p>Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                        nascetur ridiculus mus quis sem. </p>
                                </div>
                            </div>
                            <div class="contact-form">
                                <?= form_open('Advertiser/registration') ?>
                                <?= htmlFlash() ?>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Business Name" type="text" name="business_name">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="First Name" type="text" name="first_name">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Last Name" type="text" name="last_name">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Phone Number" type="text" name="phone_no">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Email Address" type="text" name="email">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="subscribe_to_email" value="1" checked> Subscribe to receive email communications from
                                        Grab-A-Gram
                                    </label>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control text-msg" rows="6"
                                              placeholder="Tell us a little about you and your company..." name="about_company"></textarea>
                                </div>
                                <div class="text-center">
                                    <button class="btn send-btn help-btn" type="submit">APPLY TO BECOME AN ADVERTISER</button>
                                </div>
                                <?= form_close() ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="gray" class=" animatedParent top-gray-border gray-section"  data-sequence='100'>
    <div class="container">
        <div class="row animatedParent"  data-sequence='100'>
            <div class="col-lg-10 col-lg-offset-1 animated fadeInUp" data-id='1'>
                <div class="text-center">
                    <div class="title">
                        <h2>Convinced Yet?</h2>
                    </div>
                    <div class="center-content-bottom">
                        Let us explain the benefits of Grab-A-Gram advertising<br>
                        services & how they can help grow your business.
                    </div>
                    <div class="tuch-btn"><a href="#">GET IN TOUCH WITH US</a></div>
                </div>
            </div>
        </div>
    </div>
</section>