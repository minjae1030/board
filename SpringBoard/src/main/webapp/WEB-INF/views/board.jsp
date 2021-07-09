<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}" />
<table border="1">
	<c:forEach var="item" items="${boardList }" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td><a href="${path }/boardItem/${item.getId()}">${item.getTitle()}</a></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>