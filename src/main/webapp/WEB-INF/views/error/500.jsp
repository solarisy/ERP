<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%	
	//设置返回码200，避免浏览器自带的错误页面
	response.setStatus(200);
	//记录日志
	Logger logger = LoggerFactory.getLogger("500.jsp");
	logger.error(exception.getMessage(), exception);
%>


<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>ERP | 500 </title>

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

	<link href="${ctx}/static/metronic/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="${ctx}/static/metronic/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link href="${ctx}/static/metronic/css/error.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="${ctx}/static/metronic/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-500-full-page">

	<div class="row-fluid">

		<div class="span12 page-500">

			<div class=" number">

				500

			</div>

			<div class=" details">

				<h3>Opps, Something went wrong.</h3>

				<p>

					We are fixing it!<br />

					Please come back in a while.<br /><br />

				</p>

			</div>

		</div>

	</div>

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="${ctx}/static/metronic/js/jquery-1.8.3.min.js" type="text/javascript"></script>   

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->  

	<script src="${ctx}/static/metronic/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="${ctx}/static/metronic/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="${ctx}/static/metronic/js/excanvas.js"></script>

	<script src="${ctx}/static/metronic/js/respond.js"></script>  

	<![endif]-->   

	<script src="${ctx}/static/metronic/js/breakpoints.js" type="text/javascript"></script>  

	<!-- IMPORTANT! jquery.slimscroll.min.js depends on jquery-ui-1.10.1.custom.min.js --> 

	<script src="${ctx}/static/metronic/js/jquery.uniform.min.js" type="text/javascript" ></script> 

	<!-- END CORE PLUGINS -->

	<script src="${ctx}/static/metronic/js/app.js"></script>  

	<script>

		jQuery(document).ready(function() {    

		   App.init();

		});

	</script>

	<!-- END JAVASCRIPTS -->

<!-- END BODY -->

</html>
