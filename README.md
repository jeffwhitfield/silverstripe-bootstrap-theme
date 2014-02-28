# SilverStripe Bootstrap Theme v1.2.0

A SilverStripe Bootstrap theme that incorporates Twitter Bootstrap and Font Awesome

## Installation ##

 * Install add-on via Composer (`composer require jeffwhitfield/silverstripe-bootstrap-theme dev-master`) OR download a copy from the repository.
 * Create a folder of your choice within the `themes/` directory of your SilverStripe project to store your custom theme in.
 * If you've downloaded the add-on, copy all files from the repository into this directory.
 * If you've installed the add-on using Composer, copy all the files from the `themes/bootstrap` directory into your custom theme directory.
 * Run `bower install` within your theme directory.
 * Update the `init()` method in your default page controller and add additional methods.

For more information about installation, see Configuration below.

## Configuration ##

The default *bootstrap* theme includes all CSS, javascript, LESS, and template files for the site. It is recommended that you create a new theme and copy all the files from the *bootstrap* directory into your own custom theme directory. This way, if changes are made to the SilverStripe Bootstrap Theme add-on, you'll have a much easier time updating your theme.

In order to use this theme you'll need to do a few things to get started with it:

First, you'll need to run the `bower install` command from within your theme directory. The theme requires that you use Bower to manage jQuery, Modernizr, Bootstrap, and Font Awesome. The benefit of this is that, should any of these components change, you can upgrade them yourself without having to rely on the SilverStripe Bootstrap Theme add-on to be updated. If you require specific versions for these components, update the `bower.json` config file prior to installing the components.

Second, you'll need to run an initial compilation of the LESS files prior to viewing a page. To compile CSS from LESS, you'll need to provide your own LESS pre-processor. For Mac users, [CodeKit](http://incident57.com/codekit/) is recommended. For Windows users, give [Prepros](http://alphapixels.com/prepros/) a try. Be sure to set it so that the resulting CSS files are minified/compressed for production use.

Lastly, you'll need to update your default Page class (`/mysite/code/Page.php`) to allow SilverStripe to control the optimization of all the javascript and CSS. To do this, update the `init()` method in your `Page_Controller` or (whatever default controller you'll be using) with the following code:

```php
    public function init() {
        parent::init();
        $ThemeDir =  $this->ThemeDir();
        Requirements::set_write_js_to_body(true);
        Requirements::set_combined_files_folder($ThemeDir.'/_requirements');
        Requirements::combine_files(
            'site.css',
            array(
                $ThemeDir.'/css/site.css',
            )
        );
        Requirements::javascript("//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js");
        Requirements::combine_files(
            'site.js',
            array(
                $ThemeDir.'/javascript/libs.js',
                $ThemeDir.'/bower_components/bootstrap/js/affix.js',
                $ThemeDir.'/bower_components/bootstrap/js/alert.js',
                $ThemeDir.'/bower_components/bootstrap/js/button.js',
                $ThemeDir.'/bower_components/bootstrap/js/carousel.js',
                $ThemeDir.'/bower_components/bootstrap/js/collapse.js',
                $ThemeDir.'/bower_components/bootstrap/js/dropdown.js',
                $ThemeDir.'/bower_components/bootstrap/js/modal.js',
                $ThemeDir.'/bower_components/bootstrap/js/tooltip.js',
                $ThemeDir.'/bower_components/bootstrap/js/popover.js',
                $ThemeDir.'/bower_components/bootstrap/js/scrollspy.js',
                $ThemeDir.'/bower_components/bootstrap/js/tab.js',
                $ThemeDir.'/bower_components/bootstrap/js/transition.js',
                $ThemeDir.'/javascript/main.js'
            )
        );
    }
```

**Note: Pay careful attention to the version of jQuery being loaded in the Requirements! By default, it's set to the version of jQuery that was current at the time this add-on was last updated. If you need to change it, be sure to change it in your `init()` method to match whatever version you are loading up with Bower.**

When the site environment is in *live* mode, all CSS files are combined and saved to `/themes/{$ThemeDir}/_requirements/site.css`. Javascript is combined/compressed to `/themes/{$ThemeDir}/_requirements/site.js`. It is recommended that you add any further javascript and CSS files here to ensure they're properly optimized for better performance. Keep in mind that only javascript receives any compression. While CSS files are concatenated, you'll need to compress the CSS files yourself or use something the like the [Minify CSS Module](https://github.com/nathancox/silverstripe-minify) to compress CSS files on the fly.


In addition to the `init()` method changes, I recommend adding one additional method to your controllers:

```php
    public function Copyright($startYear = "", $separator = "-") {
        $currentYear = date('Y');
        if(!empty($startYear)) {
            $output = ($startYear>=$currentYear ? $currentYear : $startYear.$separator.$currentYear);
        } else {
            $output = $currentYear;
        }
        return $output;
    }
```
This a simple Copyright method that is used in the footer template to return a full copyright for the current year.

## Bugtracker ##

Bugs are tracked on [github.com](https://github.com/jeffwhitfield/silverstripe-bootstrap-theme/issues). Feel free to offer suggestions and contribute to the codebase.

## Links ##

 * [SilverStripe](http://www.silverstripe.org)
 * [Twitter Bootstrap](http://getbootstrap.com/)
 * [Font Awesome](http://fortawesome.github.io/Font-Awesome/)

## Changelog ##

[Changelog](https://github.com/jeffwhitfield/silverstripe-bootstrap-theme/blob/master/changelog.md)
