<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제</title>
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}" />
	<script>
		var message = "${msg}";
		var url = "${path }/${url}";
		alert(message);
		document.location.href = url;
	</script>
</body>
</html>