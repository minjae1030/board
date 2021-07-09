<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<style>

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
    width: 700px;
    margin-top: 10px;
    font-size: 1.0em;
}

.tbl_list th {
    border-top: 1px solid #333;
    border-bottom: 2px solid #333;
    height: 48px;
    line-height: 48px;
    color: #222;
}




</style>
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}" />
<center>
	<h2><a href="#">게시판</a></h2>
</center>
<table border="1" class="tbl_list">
	<tr>
		<th>No.</th>
		<th>제목</th>
	</tr>
	<c:forEach var="item" items="${boardList }" varStatus="status">
		<tr>
			<td style="text-align:center; width:150px; padding-bottom : 5px; padding-top : 5px;">${status.count }</td>
			<td style="padding-left:15px; text-align:center;  padding-bottom : 5px; padding-top : 5px;"><a href="${path }/boardItem/${item.getId()}">${item.getTitle()}</a></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>