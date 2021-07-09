<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<style>
#search{
	position : relative;
	display : inline-block;	
}

a {
    color: #595959;
    text-decoration: none;
}

a:hover {
  color: #595959;
  text-decoration: underline;
}
table {
    border-collapse: collapse;
    border: 0;
    font-style:normal;
    font-size : 17px;
    line-height: 1.250em;
    font-family: "Nanum Gothic", "나눔 고딕", "Malgun Gothic", "맑은 고딕", "돋움", "Dotum", helvetica, sans-serif;
    letter-spacing: 0em;
    margin : 0 auto;
}

.tbl_list {
    width: 1000px;
    margin-top: 10px;
    font-size: 0.9em;
}

.tbl_list th {
    border-top: 1px solid #333;
    border-bottom: 2px solid #333;
    height: 48px;
    line-height: 48px;
    color: #222;
}

#new_btn {
	position : relative;
	left : 1160px;
	background-color:white;
	border : 1px solid #333;
	cursor : pointer;
}

#div_page {
	display : inline-block;
	position : relative;
	border-top : 1px solid #333;
	border-bottom : 1px solid #333;
	padding-top : 3px;
	padding-bottom : 3px;
	color : #222;
	left : 600px;
	margin-top : 4px;
}

#c_submit {
	background-color:white;
	border : 1px solid #333;
	cursor : pointer;
}

#search {
	display : inline-block;
	position : absolute;
		left : 987px;
	bottom : 830px;
}
</style>
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}" />
<h4><a href="${path }/board">←게시판으로 돌아가기</a></h4>
<center>
	<h2><a href="${path }/boardItem/${boardId}">${board}</a></h2>
</center>
<table border="1" class = "tbl_list">
	<tr>
		<th>No.</th>
		<th>제목</th>
		<th>작성시간</th>
	</tr>
	<c:forEach var="item" items="${boardItemList.content }" varStatus="status">
		<tr>
			<td style="text-align:center; width:150px; padding-bottom : 5px; padding-top : 5px;">${(totalCount - status.index) - ((boardItemList.number) * 10) }</td>
			<td style="padding-left:15px; padding-bottom : 5px; padding-top : 5px;"><a href="${path }/boardItem/boardItemSelectView/${boardId}/${item.getId()}/${status.count}">${item.getTitle()}</a></td>
			<td style="text-align:center; width:270px; padding-bottom : 5px; padding-top : 5px;">${item.getDate()}</td>
		</tr>
	</c:forEach>
</table>
<br>
<a href="${path }/boardItem/boardItemWrite/${boardId}"><button id="new_btn">게시글 등록</button></a>
<br>
<div id="div_page">
	<c:if test="${!boardItemList.first }">
		<a href="${path }/boardItem/${boardId}?page=0">&lt;&lt;&nbsp;맨앞</a>
		<a href="${path }/boardItem/${boardId}?page=${boardItemList.number - 1}">이전</a>
	</c:if>
	
	<c:forEach var="pageNum" begin = "${criteria.startBlock }" end = "${criteria.endBlock }" >
		<a href="${path }/boardItem/${boardId}?page=${pageNum - 1}">${pageNum }</a>	
	</c:forEach>
	
	<c:if test="${!boardItemList.last }">
		<a href="${path }/boardItem/${boardId}?page=${boardItemList.number + 1}">다음</a>
		<a href="${path }/boardItem/${boardId}?page=${criteria.totalPage-1}">맨뒤&nbsp;&gt;&gt;</a>
	</c:if>
</div>
<br>
<br>
<div id="search">
<form method="post">
<input type="text" name="keyWord" rows="1" placeholder="검색어를 입력하세요 (제목+내용)" style = "width:200px;">
<input type="submit" id="c_submit" formaction="${path }/boardItem/boardItemSearched/${boardId}" value="검색" >
</form>
</div>
</body>
</html>