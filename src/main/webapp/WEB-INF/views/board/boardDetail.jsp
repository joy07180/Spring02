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
<h2>** Board Detail Spring_MVC2 **</h2>
<hr>
<c:if test="${not empty apple}"> 
	<table>
		<tr height="40"><td bgcolor="Olive ">Seq</td><td>${apple.seq}</td></tr>
		<tr height="40"><td bgcolor="Olive ">I D</td><td>${apple.id}</td></tr>
		<tr height="40"><td bgcolor="Olive ">Title</td><td>${apple.title}</td></tr>
		<tr height="40"><td bgcolor="Olive ">Content</td>
				<td><textarea rows="5" cols="50" readonly>${apple.content}</textarea> </td>
		</tr>
		<tr height="40"><td bgcolor="Olive ">Regdate</td><td>${apple.regdate}</td></tr>
		<tr height="40"><td bgcolor="Olive ">조회수</td><td>${apple.cnt}</td></tr>
	</table>
</c:if>
<c:if test="${not empty message}">
<hr>
${message}<br>
</c:if>
<hr>
<!-- 내가 쓴글일때만 글수정과 삭제가 가능해야함 아니면 로그인 ID가 admin일때만-->
<c:if test="${loginID== apple.id || loginID == 'admin'}">
&nbsp;&nbsp;<a href="bdetail?jCode=U&seq=${apple.seq}">[글수정]</a>
&nbsp;&nbsp;<a href="bdelete?seq=${apple.seq}&root=${apple.root}">[글삭제]</a>
		<!-- root 추가 : 삭제시 원글삭제 or 답글삭제 확인을 위함 -->
</c:if>
<c:if test="${not empty loginID}">
&nbsp;&nbsp;<a href="rinsertf?root=${apple.root}&step=${apple.step}&indent=${apple.indent}">[답글]</a><br>
</c:if>
&nbsp;&nbsp;<a href="blist">boardList</a>
&nbsp;&nbsp;<a href="bcrilist">BCriList</a><br>
&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a>
&nbsp;&nbsp;<a href="home">[Home]</a>
</body>
</html>