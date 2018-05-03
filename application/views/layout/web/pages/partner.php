<section id="banner-section" class=" animatedParent"  data-sequence='100'>
    <div class="container animated fadeInLeftShort" data-id='1'>
        <div class="row animatedParent"  data-sequence='100'>
            <div class="col-lg-10 col-lg-offset-1 animated fadeInLeftShort" data-id='1'>
                <div class="text-center">
                    <div class="banner ">
                        <img src="<?= assetUrl('images/CANNABIS-icon.png') ?>">
                        <h2 class="banner-title">Let’s work Together</h2>
                        <span class="sub-title">Why Partner with GRAB-A-GRAM?</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-banner animated fadeInRightShort" data-id='1' style="background-image:url('<?= assetUrl('images/partner-banner.jpg') ?>');">
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
                                <h1>Benefits for Cannabis Suppliers</h1>
                                <div class="sub-heading">It’s a Win-Win Partnership. Just As It Should Be.</div>
                            </div>
                            <p>Grab-A-Gram is here to to help you serve your patients better.  The professionals at Grab-A-Gram provide safe and on-time delivery to your
                                patients in a discreet manner that respects both the patients’ privacy and safety. 
                            </p>
                            <p>Grab-A-Gram not only provides safe delivery of your product to your patients, but opens the doors to new markets.  providing your patients
                                and potential
                                patients with information about your dispensaries, including hours of operation, product availability, directions to your dispensary and
                                several other benefits.</p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="customer-section">
                                        <div class="text-center">
                                            <div class="cusomer-img"><img src="<?= assetUrl('images/group-icon.png') ?>"></div>
                                            <div class="customer-title"><h3>More Customers</h3></div>
                                            <div class="customer-details">
                                                <p>Expand your customer base with no additional cost to you</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="customer-section">
                                        <div class="text-center">
                                            <div class="cusomer-img"><img src="<?= assetUrl('images/mobile-phone-icon.png') ?>"></div>
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
                                            <div class="cusomer-img"><img src="<?= assetUrl('images/information.png') ?>"></div>
                                            <div class="customer-title"><h3>More information</h3></div>
                                            <div class="customer-details">
                                                <p>Track your order history through your Grab-a-gram website account.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="customer-section">
                                        <div class="text-center">
                                            <div class="cusomer-img"><img src="<?= assetUrl('images/organization.png') ?>"></div>
                                            <div class="customer-title"><h3>MORE ORGANIZATION</h3></div>
                                            <div class="customer-details">
                                                <p>Receive timely confirmation of new orders and gain complete access to our team of service
                                                    representatives</p>
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
                                    <h3>INTERESTED IN PARTNERING?</h3>
                                    <p>Currently expanding our partnerships in Columbus, Ohio.
                                        We look forward to expanding our services to new cities soon!</p>
                                </div>
                            </div>
                            <?= form_open('dispensary/registration') ?>
                            <?= htmlFlash() ?>
                            <div class="contact-form">
                                <div class="form-group">
                                    <input class="form-control" placeholder="Business Name" type="text" name="business_name"
                                           value="<?= setInputValue('business_name') ?>">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="First Name" type="text" name="first_name" value="<?= setInputValue('first_name') ?>">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Last Name" type="text" name="last_name" value="<?= setInputValue('last_name') ?>">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Phone Number" type="text" name="phone_no" value="<?= setInputValue('phone_no') ?>">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Email Address" type="text" name="email" value="<?= setInputValue('email') ?>">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" checked value="1" name="subscribe_to_email"> Subscribe to receive email communications from Grab-A-Gram
                                    </label>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control text-msg" rows="6" placeholder="Tell us a little about you and your company..."
                                              name="about_company"><?= setInputValue('about_company') ?></textarea>
                                </div>
                                <div class="text-center">
                                    <button class="btn send-btn help-btn" type="submit">APPLY TO BECOME A PARTNER</button>
                                </div>
                            </div>
                            <?= form_close() ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="gray-section" class=" animatedParent"  data-sequence='100'>
    <div class="container-fluid">
        <div class="row">
            <div class="row-height">
                <div class="col-sm-2 col-sm-height col-middle"></div>
                <div class="col-sm-4 col-sm-height col-middle animated fadeInLeftShort" data-id='1'>
                    <div class="client-sys">
                        <div class="arrows">
                            <div class="arrow-icon"><img src="<?= assetUrl('images/top-arrow.png') ?>"></div>
                            <div class="arrow-sub-title">WHAT OUR PARTNERS ARE SAYING</div>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
                            magnis
                            dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec,
                        </p>
                        <p class="clint-name">Don Marquez<br>
                            <span>OWNER OF COLUMBUDS</span>
                        </p>
                    </div>
                </div>
                <div class="col-sm-1 col-sm-height col-middle"></div>
                <div class="col-sm-5 col-sm-height col-middle padding-right hidden-xs animated fadeInRightShort" data-id='1'>
                    <div class="don-img">
                        <img src="<?= assetUrl('images/don-marquez.jpg') ?>" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
</section>
<section id="center-section" class=" animatedParent"  data-sequence='100'>
    <div class="container">
        <div class="row animatedParent"  data-sequence='100'>
            <div class="col-lg-10 col-lg-offset-1 animated fadeInUp" data-id='1'>
                <div class="text-center">
                    <div class="title">
                        <h2>Still Not Convinced?</h2>
                    </div>
                    <div class="center-content-bottom">
                        Let us explain the benefits of Grab-a-Gram <br>
                        & how it can help grow your business!
                    </div>
                    <div class="tuch-btn"><a href="#">GET IN TOUCH WITH US</a></div>
                </div>
            </div>
        </div>
    </div>
</section>