# SilverStripe Bootstrap Theme v1.0.0

A SilverStripe Bootstrap theme that incorporates Twitter Bootstrap and Font Awesome

## Installation ##

 * Copy the theme into the `themes/` directory of your SilverStripe project.  If you've named it correctly, there should be a directory called `themes/bootstrap/templates`.
 * Update the `init()` method in your default page controller and add additional methods (See Configuration below).

## Configuration ##

The default *bootstrap* theme includes all CSS, javascript, LESS, and template files for the site. It is recommended that you create a new theme by duplicating or changing the name of the *bootstrap* directory.

In order to use this theme you'll need to update your default Page class (`/mysite/code/Page.php`) to allow SilverStripe to control the optimization of all the javascript and CSS. To do this, update the `init()` method in your `Page_Controller` or (whatever default controller you'll be using) with the following code:

```php
    public function init() {
        parent::init();
        $ThemeDir =  $this->ThemeDir();
        Requirements::set_write_js_to_body(true);
        Requirements::set_combined_files_folder($ThemeDir.'/_requirements');
        Requirements::combine_files(
            'site.css',
            array(
                $ThemeDir.'/css/bootstrap.css',
            )
        );
        Requirements::javascript("//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js");
        Requirements::combine_files(
            'site.js',
            array(
                $ThemeDir.'/javascript/libs.js',
                $ThemeDir.'/javascript/bootstrap/affix.js',
                $ThemeDir.'/javascript/bootstrap/alert.js',
                $ThemeDir.'/javascript/bootstrap/button.js',
                $ThemeDir.'/javascript/bootstrap/carousel.js',
                $ThemeDir.'/javascript/bootstrap/collapse.js',
                $ThemeDir.'/javascript/bootstrap/dropdown.js',
                $ThemeDir.'/javascript/bootstrap/modal.js',
                $ThemeDir.'/javascript/bootstrap/popover.js',
                $ThemeDir.'/javascript/bootstrap/scrollspy.js',
                $ThemeDir.'/javascript/bootstrap/tab.js',
                $ThemeDir.'/javascript/bootstrap/tooltip.js',
                $ThemeDir.'/javascript/bootstrap/transition.js',
                $ThemeDir.'/javascript/main.js'
            )
        );
    }
```

When the site environment is in *live* mode, all CSS files are combined and saved to `/themes/{$ThemeDir}/_requirements/site.css`. Javascript is combined/compressed to `/themes/{$ThemeDir}/_requirements/site.js`. It is recommended that you add any further javascript and CSS files here to ensure they're properly optimized for better performance. Keep in mind that only javascript receives any compression. While CSS files are concatenated, you'll need to compress the CSS files yourself or use something the like the [Minify CSS Module](https://github.com/nathancox/silverstripe-minify) to compress CSS files on the fly.

To compile CSS from LESS, you'll need to provide your own LESS pre-processor. For Mac users, [CodeKit](http://incident57.com/codekit/) is recommended. For Windows users, give [Prepros](http://alphapixels.com/prepros/) a try. Be sure to set it so that the resulting CSS files are minified/compressed.

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
