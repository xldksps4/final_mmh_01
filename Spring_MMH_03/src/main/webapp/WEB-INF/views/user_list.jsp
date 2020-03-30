<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 리스트 및 피드백 보기 페이지</title>
</head>
<body>
	<h1>유저 리스트 페이지</h1>
	
	<table border="1">
		<col width="50"/>
		<col width="100"/>
		<col width="300"/>
		<col width="100"/>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		<c:choose>
			<c:when test="${empty list }">
				<tr><td colspan="4">---------작성된 글이 존재하지 않습니다-----------</td></tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${selectlist.opno }</td>
						<td>${selectlist.myname }</td>
						<td><a href="user_meetinglogdetail.do?n_no=20">${selectlist.mytitle }</a></td>
						<td>${selectlist.mydate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<tr>
			<td colspan="4" align="right">
				<input type="button" value="글작성" onclick="location.href='insertform.do'"/>
			</td>
		</tr>	
	</table>
</body>
</html>