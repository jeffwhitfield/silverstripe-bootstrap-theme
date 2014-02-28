<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	$MetaTags(false)
    <!-- Place favicon.ico and apple-touch-icon.png in the root of your domain and delete these references -->
    <link rel="shortcut icon" href="{$ThemeDir}/icons/favicon.ico">
    <link rel="apple-touch-icon" href="{$ThemeDir}/icons/apple-touch-icon.png">
    <script>
    themedir = '{$ThemeDir}';
    </script>
    <script src="{$ThemeDir}/bower_components/modernizr/modernizr.js"></script>
</head>
<body>
<% include Header %>

<!--[if lt IE 8]>
<div class="container chromeframe">
    <div class="row">
        <div class="col-lg-12">
    		<div class="alert alert-error">
    		  You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.
    		</div>
        </div>
    </div>
</div>
<![endif]-->

$Layout

<% include Footer %>

<div id="back-to-top" data-spy="affix" data-offset-top="100"><a href="#" class="btn btn-default"><i class="fa fa-chevron-up"><span class="hide">Back to Top</span></i></a></div>

</body>
</html>
