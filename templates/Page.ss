<!DOCTYPE html>
<!--[if !IE]><!-->
<html class="no-js" lang="$ContentLocale">
<!--<![endif]-->
<!--[if lt IE 9 ]><html lang="$ContentLocale" class="ie ie8 lt-ie9"><![endif]-->
<!--[if IE 9 ]><html lang="$ContentLocale" class="ie ie9"><![endif]-->
<head>
	<% base_tag %>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<%-- Use minimum-scale=1 to enable GPU rasterization --%>
	<meta
		name="viewport"
		content="width=device-width, initial-scale=1, user-scalable=0, maximum-scale=1, minimum-scale=1"
	>
	<link href="{$ThemeDir}/dist/main.css" rel="stylesheet">
</head>

<body class="$ClassName"<% if $i18nScriptDirection %> dir="$i18nScriptDirection"<% end_if %>>

	$Layout

	<%--
		This script adds the Roboto font to our project.
		For more detail go to this site:  http://www.google.com/fonts#UsePlace:use/Collection:Roboto:400,300,500
	--%>
	<script>
		var WebFontConfig = {
			google: { families: [ 'Roboto:400,300,500:latin' ] }
		};
		(function() {
			var wf = document.createElement('script');
			wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
			wf.type = 'text/javascript';
			wf.async = 'true';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(wf, s);
		})();
	</script>
	<script src="{$ThemeDir}/dist/App.js"></script>
</body>
</html>
