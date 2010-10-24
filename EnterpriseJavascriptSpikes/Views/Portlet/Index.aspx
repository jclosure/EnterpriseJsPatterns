﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html> 
<html lang="en"> 
<head runat="server"> 
	<meta charset="UTF-8" /> 
	<title>jQuery UI Sortable - Portlets</title> 
	<link type="text/css" href="../../jquery-ui/themes/base/jquery.ui.all.css" rel="stylesheet" /> 
	<script type="text/javascript" src="../../Scripts/jquery-1.4.3.js"></script> 
	<script type="text/javascript" src="../../jquery-ui/ui/jquery.ui.core.js"></script> 
	<script type="text/javascript" src="../../jquery-ui/ui/jquery.ui.widget.js"></script> 
	<script type="text/javascript" src="../../jquery-ui/ui/jquery.ui.mouse.js"></script> 
	<script type="text/javascript" src="../../jquery-ui/ui/jquery.ui.sortable.js"></script> 
	<%--<link type="text/css" href="../demos.css" rel="stylesheet" /> --%>
	<style type="text/css"> 
	.column { width: 170px; float: left; padding-bottom: 100px; }
	.portlet { margin: 0 1em 1em 0; }
	.portlet-header { margin: 0.3em; padding-bottom: 4px; padding-left: 0.2em; }
	.portlet-header .ui-icon { float: right; }
	.portlet-content { padding: 0.4em; }
	.ui-sortable-placeholder { border: 1px dotted black; visibility: visible !important; height: 50px !important; }
	.ui-sortable-placeholder * { visibility: hidden; }
	</style> 
	<script type="text/javascript">
	    $(function () {
	        $(".column").sortable({
	            connectWith: '.column'
	        });

	        $(".portlet").addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
			.find(".portlet-header")
				.addClass("ui-widget-header ui-corner-all")
				.prepend('<span class="ui-icon ui-icon-minusthick"></span>')
				.end()
			.find(".portlet-content");

	        $(".portlet-header .ui-icon").click(function () {
	            $(this).toggleClass("ui-icon-minusthick").toggleClass("ui-icon-plusthick");
	            $(this).parents(".portlet:first").find(".portlet-content").toggle();
	        });

	        $(".column").disableSelection();
	    });
	</script> 
</head> 
<body> 
<div class="demo"> 
 
<div class="column"> 
 
	<div class="portlet"> 
		<div class="portlet-header">Feeds</div> 
		<div class="portlet-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div> 
	</div> 
	
	<div class="portlet"> 
		<div class="portlet-header">News</div> 
		<div class="portlet-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div> 
	</div> 
 
</div> 
 
<div class="column"> 
 
	<div class="portlet"> 
		<div class="portlet-header">Shopping</div> 
		<div class="portlet-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div> 
	</div> 
 
</div> 
 
<div class="column"> 
 
	<div class="portlet"> 
		<div class="portlet-header">Links</div> 
		<div class="portlet-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div> 
	</div> 
	
	<div class="portlet"> 
		<div class="portlet-header">Images</div> 
		<div class="portlet-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div> 
	</div> 
 
</div> 
 
</div><!-- End demo --> 
 
<div class="demo-description"> 
 
<p> 
	Enable portlets (styled divs) as sortables and use the <code>connectWith</code> 
	option to allow sorting between columns.
</p> 
 
</div><!-- End demo-description --> 
 
</body> 
</html> 