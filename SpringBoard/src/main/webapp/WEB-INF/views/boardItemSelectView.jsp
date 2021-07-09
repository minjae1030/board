<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}" />
	<form method="POST">
		<table border="1">
			<tr>
				<th>번호</th>
				<td>${count }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					${title }
				</td>
			</tr>
			<tr>
				<th>일자</th>
				<td>${date }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					${content }
				</td>
			</tr>
		</table>
		<input type="button" value="목록" onclick="location.href='${path }/boardItem/${boardId }'">
		<input type="submit" formaction="${path }/boardItem/boardItemUpdate/${boardId}/${id}/${count}" value="수정">
	</form>
	
	<br><br><br>
	<div>
	<b>댓글</b>
	<br><br>
	<form method="post">
		<textarea name="comment" rows="3" placeholder="댓글을 입력하세요." style = "width:500px;"></textarea>
		<input type="submit" id="c_submit" formaction="${path}/boardItem/boardItemComment/${boardId}/${id}/${count}" value="댓글 등록" style="font-size:15px;">
	</form>
	<br>
	<table border="1">
	<c:forEach var="item" items="${commentList }" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${item.getContent()}</td>
			<td>${item.getDate()}</td>
		</tr>
	</c:forEach>
</table>
	
</div>
</body>
</html>