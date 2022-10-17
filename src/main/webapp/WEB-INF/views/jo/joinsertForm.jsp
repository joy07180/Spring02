<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>** jo Insert Spring_MVC2 **</title>
	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** jo Insert Spring_MVC2 **</h2>
<form action="joinsert" method="post">
	<table>
		<tr height="40"><td bgcolor="DarkOliveGreen  ">Jno</td>
			<td><input type="text" name="jno" value="${jno}" size="20" placeholder="반드시 입력하세요~~"></td></tr>
		<tr height="40"><td bgcolor="DarkOliveGreen  ">chief</td>
			<td><input type="text" name="chief" size="20" placeholder="반드시 입력하세요~~"></td></tr>
		<tr height="40"><td bgcolor="DarkOliveGreen  ">Jname</td>
			<td><input type="text" name="jname" size="20" placeholder="반드시 입력하세요~~"> </td>
		</tr>
		<tr height="40"><td bgcolor="DarkOliveGreen  ">note</td>
			<td><input type="text" name="note" size="20" placeholder="반드시 입력하세요~~"> </td>
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
&nbsp;&nbsp;<a href="jlist">joList</a>
&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a>
&nbsp;&nbsp;<a href="home">[Home]</a>
</body>
</html>