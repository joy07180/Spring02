<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>** Jo Detail Spring_MVC2 **</title>
	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** Jo Detail Spring_MVC2 **</h2>
<hr>
<c:if test="${not empty apple}"> 
	<table>
		<tr height="40"><td bgcolor="Olive ">Jno</td><td>${apple.jno}</td></tr>
		<tr height="40"><td bgcolor="Olive ">Chief</td><td>${apple.chief}</td></tr>
		<tr height="40"><td bgcolor="Olive ">Jname</td><td>${apple.jname}</td></tr>
		<tr height="40"><td bgcolor="Olive ">Note</td>
				<td><textarea rows="5" cols="50" readonly>${apple.note}</textarea> </td>
		</tr>
	</table>
</c:if>
<hr>
<table width=100%> 
	<tr bgcolor="pink" height="30">
		<th>I D</th><th>Password</th><th>Name</th><th>Info</th><th>Birthday</th><th>Jno</th><th>Age</th><th>Point</th>
	</tr>

	<c:if test="${not empty banana}">
		<c:forEach  var="member" items="${banana}" >
		<tr height="30">
			<td>${member.id}</td>
			<td>${member.password}</td><td>${member.name}</td>
			<td>${member.info}</td><td>${member.birthday}</td>
			<td>${member.jno}</td><td>${member.age}</td><td>${member.point}</td>
		</tr>	
		</c:forEach>
	</c:if>
	
</table>
<hr>
<c:if test="${not empty message}">
<hr>
${message}<br>
</c:if>
<hr>
<!-- 내가 쓴글일때만 글수정과 삭제가 가능해야함 아니면 로그인 ID가 admin일때만-->
&nbsp;&nbsp;<a href="jdelete?jno=${apple.jno}">[조삭제]</a>
&nbsp;&nbsp;<a href="jdetail?jCode=U&jno=${apple.jno}">[조수정]</a>
<br>
&nbsp;&nbsp;<a href="jlist">joList</a>
&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a>
&nbsp;&nbsp;<a href="home">[Home]</a>
</body>
</html>