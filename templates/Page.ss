<!doctype html>
<html lang="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<% base_tag %>
  <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	$MetaTags(false)
  <!-- Place favicon.ico and apple-touch-icon.png in the root of your domain and delete these references -->
  <link rel="shortcut icon" href="{$ThemeDir}/icons/favicon.ico">
  <link rel="apple-touch-icon" href="{$ThemeDir}/icons/apple-touch-icon.png">
  <link rel="stylesheet" href="{$ThemeDir}/css/site.css">
  <!--[if lt IE 9]>
    <script src="{$ThemeDir}/js/min/shiv-min.js"></script>
  <![endif]-->
</head>
<body id="$URLSegment">
<% include Header %>

<!--[if lt IE 9]>
<div class="container browserupgrade">
    <div class="row">
        <div class="col-lg-12">
        <div class="alert alert-danger">
          You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.
        </div>
        </div>
    </div>
</div>
<![endif]-->

$Layout

<% include Footer %>

<script src="{$ThemeDir}/js/min/vendor-min.js"></script>
<script src="{$ThemeDir}/js/min/main-min.js"></script>
</body>
</html>
