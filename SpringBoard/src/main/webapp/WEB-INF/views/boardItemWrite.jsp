<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
<style>
textarea {
	resize : none;}

textarea:focus {
	outline : none;
}

a {
	cursor:pointer;
	color: #595959;
    text-decoration: none;
}

a:hover {
  color: #595959;
  text-decoration: underline;
}
table {
    border-collapse: collapse;
    border: 1;
    font-style:normal;
    font-size : 17px;
    line-height: 1.250em;
    font-family: "Nanum Gothic", "나눔 고딕", "Malgun Gothic", "맑은 고딕", "돋움", "Dotum", helvetica, sans-serif;
    letter-spacing: 0em;
    margin : 0 auto;
}

.tbl_list {
    width: 800px;
    margin-top: 10px;
    font-size: 0.9em;
}

.tbl_list th {
    border-top: 1px solid #333;
    border-bottom: 1px solid #333;
    height: 48px;
    line-height: 48px;
    color: #222;
}

.td {
	padding-left : 5px;
}

.btn {
	position : relative;
	left : 1040px;
	background-color:white;
	border : 1px solid #333;
	cursor : pointer;
	font-size : 16px;
	border-radius : 10px;
	margin-top : 13px;
	margin-right:3px;
}

</style>
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}" />
<center>
	<h2><a href="${path }/boardItem/${boardId}">${board}</a></h2>
</center>
	<form method="POST">
		<table border="1" class="tbl_list">
			<tr>
				<th>번호</th>
				<td class="td">신규 게시글</td>
			</tr>
			<tr>
				<th>제목</th>
				<td class="td">
					<input type="text" name="title" placeholder="제목을 입력하세요(최대 50자)" style="width:400px; height:25px;">
				</td>
			</tr>
			<tr>
				<th>일자</th>
				<td class="td">${date }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td class="td">
					<textarea name="content" rows="15" style="width:80%;" placeholder="내용을 입력하세요"></textarea>
				</td>
			</tr>
		</table>
		<input type="button" class="btn" value="취소" onclick="location.href='${path }/boardItem/${boardId }'">
		<input type="submit" class="btn" formaction="${path }/boardItem/boardItemInsert/${boardId}" value="추가">
	</form>

</body>
</html>