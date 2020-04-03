<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 리스트 및 피드백 보기 페이지</title>
<link rel="stylesheet" href="resources/css/besides_main_page/user_main.css">
<link rel="stylesheet" href="resources/css/besides_main_page/user_list.css">
</head>
<body>
	<h1>${login.m_id }</h1>
	<div id="header">말만해</div>
	<div id="nav">
		<ul>
			<li>글쓰기</li>
			<li>드로잉에디터</li>
			<li>포스트잇</li>
			<li>아이디어 기획을 돕는 도구툴</li>
			<li>달력</li>
		</ul>
	</div>
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
	</div>
	<div id="section">
		<div id="text-voice">
			<input type="text" id="text-voice" placeholder="음성녹음 텍스트로 적히는 공간">
		</div>
		<div id="voice">음성녹음 버튼 들어갈자리</div>
	</div>

</body>
</html>