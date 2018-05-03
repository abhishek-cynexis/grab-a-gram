<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title> Grab A Gram </title>
    <?php getMetaData(); ?>
    <script src="<?= assetUrl('web/js/html5shiv.js') ?>"></script>
    <script src="<?= assetUrl('web/js/respond.min.js') ?>"></script>
    <script src="<?= assetUrl('web/js/modernizr-2.6.2.min.js') ?>"></script>
    <link href="<?= assetUrl('web/css/style.css') ?>" rel="stylesheet">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <?php getStylesheet(); ?>
    <?= jquery() ?>
    <?= toastrJS() ?>
</head>
<style>

    .upload-photo span {
        padding-left: 0px !important;
    }

    .upload-photo {
        background: #a1a1a3;
        padding: 10px 15px;
        color: #fff;
        text-transform: uppercase;
        font-size: 16px;
    }

    .fileUpload {
        position: relative;
        overflow: hidden;
        margin: 0px auto;
        width: 200px;
    }

    .fileUpload input.upload {
        position: absolute;
        top: 0;
        right: 0;
        margin: 0;
        padding: 0;
        font-size: 20px;
        cursor: pointer;
        opacity: 0;
        filter: alpha(opacity=0);
    }
</style>
<body>