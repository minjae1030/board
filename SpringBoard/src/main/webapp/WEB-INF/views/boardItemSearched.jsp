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
	<c:forEach var="item" items="${boardItemListSearched }" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td><a href="${path }/boardItem/boardItemSelectView/${boardId}/${item.getId()}/${status.count}">${item.getTitle()}</a></td>
			<td>${item.getDate()}</td>
		</tr>
	</c:forEach>
</table>
<form method="post">
<input type="text" name="keyWord" rows="1" placeholder="검색어를 입력하세요." style = "width:200px;">
<input type="submit" id="c_submit" formaction="${path }/boardItem/boardItemSearched/${boardId}" value="검색">
</form>
<br>
<a href="${path }/boardItem/boardItemWrite/${boardId}"><button>게시글 등록</button></a>
</body>
</html>