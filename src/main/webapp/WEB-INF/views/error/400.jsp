<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%response.setStatus(200);%>

<!DOCTYPE html>
<html>
<head>
	<title>400 - 参数错误</title>
</head>

<body>
	<h2>400 - 参数错误.</h2>
	<ol>
		<c:forEach items="${errors}" var="error">
			<li>${error.defaultMessage}</li>
		</c:forEach>
	</ol>
</body>
</html>