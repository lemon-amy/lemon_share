<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'statics/css/lib/bootstrap/css/bootstrap.css',
        'statics/css/lib/fonts/font-awesome/css/font-awesome.css',
        'statics/css/lib/fonts/fontello/css/fontello.css',
        'statics/css/plugins/rs-plugin/css/settings.css',
        'statics/css/plugins/rs-plugin/css/extralayers.css',
        'statics/css/plugins/magnific-popup/magnific-popup.css',
        'statics/css/animations.css',
        'statics/css/plugins/owl-carousel/owl.carousel.css',
        'statics/css/style.css',
        'statics/css/skins/red.css',
        'statics/css/style-switcher/style-switcher.css',
        'statics/css/custom.css',
    ];
    public $js = [
//        [if lt IE 9]
        'statics/js/html5shiv.js',
        'statics/js/selectivizr.js',
//        [endif]
        'statics/js/plugins/jquery.min.js',
        'statics/js/lib/bootstrap/js/bootstrap.min.js',
        'statics/js/plugins/modernizr.js',
        'statics/js/plugins/rs-plugin/js/jquery.themepunch.tools.min.js',
        'statics/js/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js',
        'statics/js/plugins/isotope/isotope.pkgd.min.js',
        'statics/js/plugins/owl-carousel/owl.carousel.js',
        'statics/js/plugins/magnific-popup/jquery.magnific-popup.min.js',
        'statics/js/plugins/jquery.appear.js',
        'statics/js/plugins/jquery.countTo.js',
        'statics/js/plugins/jquery.parallax-1.1.3.js',
        'statics/js/plugins/jquery.validate.js',
        'statics/js/template.js',
        'statics/js/custom.js',
        'statics/js/style-switcher/style-switcher.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}