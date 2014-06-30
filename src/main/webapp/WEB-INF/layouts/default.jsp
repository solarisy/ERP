<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<!-- 

Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 2.3.1

Version: 1.3

Author: KeenThemes

Website: http://www.keenthemes.com/preview/?theme=metronic

Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469

-->

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->
<head>
<title>ERP<sitemesh:title/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<!-- 
<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">
<link href="${ctx}/static/bootstrap/2.3.2/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/styles/default.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>
 -->


	<meta charset="utf-8" />
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="${ctx}/static/metronic/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx}/static/metronic/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx}/static/metronic/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx}/static/metronic/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx}/static/metronic/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx}/static/metronic/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx}/static/metronic/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="${ctx}/static/metronic/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES --> 

	<link href="${ctx}/static/metronic/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx}/static/metronic/css/daterangepicker.css" rel="stylesheet" type="text/css" />

	<link href="${ctx}/static/metronic/css/fullcalendar.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx}/static/metronic/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>

	<link href="${ctx}/static/metronic/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="${ctx}/static/metronic/image/favicon.ico" />

<sitemesh:head/>
</head>

<body class="page-header-fixed">
	<%@ include file="/WEB-INF/layouts/header.jsp"%>
	
	<sitemesh:body/>

	<%@ include file="/WEB-INF/layouts/footer.jsp"%>

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="${ctx}/static/metronic/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="${ctx}/static/metronic/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="${ctx}/static/metronic/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="${ctx}/static/metronic/js/excanvas.min.js"></script>

	<script src="${ctx}/static/metronic/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="${ctx}/static/metronic/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="${ctx}/static/metronic/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script src="${ctx}/static/metronic/js/jquery.vmap.js" type="text/javascript"></script>   

	<script src="${ctx}/static/metronic/js/jquery.vmap.russia.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.vmap.world.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.vmap.europe.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.vmap.germany.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.vmap.usa.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.vmap.sampledata.js" type="text/javascript"></script>  

	<script src="${ctx}/static/metronic/js/jquery.flot.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.flot.resize.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.pulsate.min.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/date.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/daterangepicker.js" type="text/javascript"></script>     

	<script src="${ctx}/static/metronic/js/jquery.gritter.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/fullcalendar.min.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/jquery.sparkline.min.js" type="text/javascript"></script>  

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="${ctx}/static/metronic/js/app.js" type="text/javascript"></script>

	<script src="${ctx}/static/metronic/js/index.js" type="text/javascript"></script>        

	<!-- END PAGE LEVEL SCRIPTS -->  

	<script>

		jQuery(document).ready(function() {    

		   App.init("${ctx}"); // initlayout and core plugins

		   Index.init();

		   Index.initJQVMAP(); // init index page's custom scripts

		   Index.initCalendar(); // init index page's custom scripts

		   Index.initCharts(); // init index page's custom scripts

		   Index.initChat();

		   Index.initMiniCharts();

		   Index.initDashboardDaterange();

		   Index.initIntro();

		});

	</script>

	<!-- END JAVASCRIPTS -->

</body>
</html>