<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user list 정보입니다. user_main은 아직 없어요</title>
<link rel="stylesheet" href="resources/css/besides_main_page/user_main.css">

</head>
<body>
	<div id="header">말만해</div>
	<div id="board">
		<table border="1">
			<col width="50" />
			<col width="100" />
			<col width="300" />
			<col width="100" />
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<c:choose>
				<c:when test="${empty selectlist }">
					<tr>
						<td colspan="4">---------작성된 글이 존재하지 않습니다-----------</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${selectlist }" var="dto">
						<tr>
							<td>${dto.opno }</td>
							<td>${dto.nwriter }</td>
							<td><a
								href="user_meetinglogdetail.do?opno=450&nno=${dto.nno}">${dto.ntitle }</a></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="4" align="right"><input type="button" value="글작성"
					onclick="location.href='insertform.do'" /></td>
			</tr>
		</table>
		<div id="img">보고서 캡쳐 이미지</div>
	</div>
	<div id="section">
		<div id="calendar">달력</div>
		<h3>project link: </h3>
	</div>

</body>
</html>