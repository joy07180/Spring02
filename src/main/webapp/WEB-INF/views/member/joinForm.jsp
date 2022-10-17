<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>** MemberJoin Web_MVC2 **</title>
	<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** MemberJoin Web_MVC2 **</h2>

<form action="join" method="post">

	<table>
	<!-- name 은 문서밖에서 감색하려고 쓰고 id는 문서내에서 검색하려고 쓴다 id name 이름이 같아야함 -->
		<tr height="40"><td bgcolor="LightBlue">I D</td>
			<td><input type="text" name="id" id="id" size="20" placeholder="ID는 영문,숫자 10자이내"></td></tr>
		<tr height="40"><td bgcolor="LightBlue">Password</td>
			<td><input type="password" name="password" id="password" size="20" placeholder="특수문자 반드시 포함"></td></tr>
		<tr height="40"><td bgcolor="LightBlue">Name</td>
			<td><input type="text" name="name" id="name" size="20" ></td></tr>
		<tr height="40"><td bgcolor="LightBlue">Info</td>
			<td><input type="text" name="info" id="info" size="20" ></td></tr>
		<tr height="40"><td bgcolor="LightBlue">Birthday</td>
			<td><input type="date" name="birthday" id="birthday" size="20" ></td></tr>
		
		<tr height="40"><td bgcolor="LightBlue">Jno</td>
		<td><select name="jno" id="jno" >
				<option value="1">1:uniqe </option>
				<option value="2">2:천지창조 </option>
				<option value="3">3:3조 </option>
				<option value="4">4:4조 </option>
				<option value="5">5:do가자 </option>
				<option value="6">6:김고정 </option>
				<option value="9" selected>9:관리자 </option> <!-- selected를 하면 기본적으로 이게 선택됨 default값이 됨 -->
			</select>
		</td></tr>
		
		<tr height="40"><td bgcolor="LightBlue">Age</td>
			<td><input type="text" name="age" id="age" size="20" placeholder="정수 입력"></td></tr>
		<tr height="40"><td bgcolor="LightBlue">Point</td>
			<td><input type="text" name="point" id="point" size="20" placeholder="실수 입력"></td></tr>
		<tr height="40"><td ></td>
			<td><input type="submit" value="가입">&nbsp;&nbsp;
				<input type="submit" value="취소">
			</td>
			</tr>
		
	</table>
	
	</form>
<c:if test="${not empty message}">
<hr>
${message}<br>
</c:if>
<hr>
&nbsp;&nbsp;<a href="javascript:history.go(-1)">이전으로</a>
&nbsp;&nbsp;<a href="home">[Home]</a>
</body>
</html>