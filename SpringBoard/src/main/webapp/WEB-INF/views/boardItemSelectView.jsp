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
	padding-top : 10px;
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

#div_com{
	position : relative;
	display : inline-block;
	left : 340px;
}

#c_submit {
	position : relative;
	left : 15px;
	bottom : 15px;
	background-color:white;
	border : 1px solid #333;
	cursor : pointer;
	font-size : 16px;
	border-radius : 10px;
	margin-top : 13px;
	margin-right:3px;
	padding : 4px;
}

#cnt {
	text-align : center;
}

#date {
	text-align : center;
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
				<td class="td">${count }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td class="td">
					${title }
				</td>
			</tr>
			<tr>
				<th>일자</th>
				<td class="td">${date }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td class="td">
					${content }
				</td>
			</tr>
		</table>
		<input type="button" class="btn" value="목록" onclick="location.href='${path }/boardItem/${boardId }'">
		<input type="submit" class="btn" formaction="${path }/boardItem/boardItemUpdate/${boardId}/${id}/${count}" value="수정">
	</form>
	
	<br><br><br>
	<div>
	<div id="div_com">
	<b>댓글</b>
	<br><br>
	<form method="post">
		<textarea name="comment" rows="3" placeholder="댓글을 입력하세요." style = "width:500px;"></textarea>
		<input type="submit" id="c_submit" formaction="${path}/boardItem/boardItemComment/${boardId}/${id}/${count}" value="댓글 등록" style="font-size:15px;">
	</form>
	</div>
	<br>
	<table border="0" class="tbl_list">
	<tr>
		<th style="width : 150px;">댓글번호</th>
		<th>댓글내용</th>
		<th style="width : 200px;">작성시간</th>
	</tr>
	<c:forEach var="item" items="${commentList }" varStatus="status">
		<tr>
			<td class="td" id = "cnt">${status.count }</td>
			<td class="td">${item.getContent()}</td>
			<td class="td" id = "date">${item.getDate()}</td>
		</tr>
	</c:forEach>
</table>
	
</div>
</body>
</html>