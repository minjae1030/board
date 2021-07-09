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
				<td>신규 게시글</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="title" placeholder="제목을 입력하세요(최대 50자)" style="width:400px; height:25px;">
				</td>
			</tr>
			<tr>
				<th>일자</th>
				<td>${date }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea name="content" rows="15" style="width:80%;" placeholder="내용을 입력하세요"></textarea>
				</td>
			</tr>
		</table>
		<input type="button" value="취소" onclick="location.href='${path }/boardItem/${boardId }'">
		<input type="submit" formaction="${path }/boardItem/boardItemInsert/${boardId}" value="추가">
	</form>

</body>
</html>