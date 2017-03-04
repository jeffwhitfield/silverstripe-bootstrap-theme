# SilverStripe Bootstrap Theme v2.0.0

A SilverStripe Bootstrap v4 theme

## Installation ##

 * Install add-on via Composer (`composer require jeffwhitfield/silverstripe-bootstrap-theme dev-master`) OR download a copy from the repository.
 * Create a folder of your choice within the `themes/` directory of your SilverStripe project to store your custom theme in.
 * If you've downloaded the add-on, copy all files from the repository into this directory.
 * If you've installed the add-on using Composer, copy all the files from the `themes/bootstrap` directory into your custom theme directory.
 * Run `bower install` within your theme directory.
 * Update your default page controller with additional methods.

For more information about installation, see Configuration below.

## Configuration ##

The default *bootstrap* theme includes all CSS, javascript, SCSS, and template files for the site. It is recommended that you create a new theme and copy all the files from the *bootstrap* directory into your own custom theme directory. This way, if changes are made to the SilverStripe Bootstrap Theme add-on, you'll have a much easier time updating your theme.

In order to use this theme you'll need to do a few things to get started with it:

First, you'll need to run the `bower install` command from within your theme directory. The theme requires that you use Bower to manage jQuery, HTML5Shiv, Bootstrap, and PictureFill. The benefit of this is that, should any of these components change, you can upgrade them yourself without having to rely on the SilverStripe Bootstrap Theme add-on to be updated. If you require specific versions for these components, update the `bower.json` config file prior to installing the components.

Second, you'll need to run an initial compilation of the SCSS files prior to viewing a page. To compile CSS from SCSS, you'll need to provide your own SASS pre-processor. For Mac users, [CodeKit](http://incident57.com/codekit/) is recommended. For Windows users, give [Prepros](http://alphapixels.com/prepros/) a try.

You can also use Gulp, Grunt, or any command line task runner if you'd like. However, be sure and set it up to include the proper Javascript files as listed in the `vendor.js` and `shiv.js` files.

Be sure to set it so that the resulting CSS files are minified/compressed for production use.

Optionally, you can update your default Page class (`/mysite/code/Page.php`) to include an additional method in your controllers:

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

## Changelog ##

[Changelog](https://github.com/jeffwhitfield/silverstripe-bootstrap-theme/blob/master/changelog.md)
