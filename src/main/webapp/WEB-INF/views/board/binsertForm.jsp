<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>** Board Insert Spring_MVC2 **</title>
	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** Board Insert Spring_MVC2 **</h2>
<form action="binsert" method="post">
	<table>
		<tr height="40"><td bgcolor="DarkOliveGreen  ">I D</td>
			<td><input type="text" name="id" value="${loginID}" size="20" readonly></td></tr>
		<tr height="40"><td bgcolor="DarkOliveGreen  ">Title</td>
			<td><input type="text" name="title" placeholder="반드시 입력하세요~~"></td></tr>
		<tr height="40"><td bgcolor="DarkOliveGreen  ">Content</td>
			<td><textarea rows="5" cols="50" name="content"></textarea> </td>
		</tr>
		<tr><td></td>
			<td><input type="submit" value="등록">&nbsp;&nbsp;
				<input type="reset" value="취소">
			</td></tr>
	</table>
</form>

<c:if test="${not empty message}">
<hr>
${message}<br>
</c:if>
<hr>
<!-- 내가 쓴글일때만 글수정과 삭제가 가능해야함 아니면 로그인 ID가 admin일때만-->
&nbsp;&nbsp;<a href="blist">boardList</a>
&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a>
&nbsp;&nbsp;<a href="home">[Home]</a>
</body>
</html>