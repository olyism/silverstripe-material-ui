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

<link href="{$ThemeDir}/build/main.css" rel="stylesheet">
