<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user list 정보입니다. user_main은 아직 없어요</title>
<link rel="stylesheet"
	href="resources/css/besides_main_page/user_main.css">

<!-- calendar를 위한 라이브러리들 지우면 안됨 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://fullcalendar.io/releases/fullcalendar/3.9.0/lib/moment.min.js"></script>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css'
	rel='stylesheet' />
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css'
	rel='stylesheet' media='print' />
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js'></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#calendar')
								.fullCalendar(
										{
											header : {
												right : 'custom2 prevYear,prev,next,nextYear'
											},
											// 출석체크를 위한 버튼 생성
											// 달력 정보 가져오기 
											events : function(start, end,
													timezone, callback) {
												$
														.ajax({
															contentType : "application/json; charset=utf-8",
															url : "getCalList.do",
															dataType : 'json',
															success : function(
																	data) {

																var events = [];
																$
																		.each(
																				data,
																				function(
																						index,
																						value) {

																					events
																							.push({
																								id : value['id'],
																								title : value['title'],
																								date : value['date']
																							//all data
																							});
																					console
																							.log(value)
																				});
																callback(events);
															},
															error : function(
																	xhr, err) {
																alert("ERROR! - readyState: "
																		+ xhr.readyState
																		+ "<br/>status: "
																		+ xhr.status
																		+ "<br/>responseText: "
																		+ xhr.responseText);
															}
														});

											}
										});
					})
</script>
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
							<td>${dto.nno }</td>
							<td>${dto.nwriter }</td>
							<td><a
								href="user_detail.do?nno=${dto.nno}&nwriter=${dto.nwriter}">${dto.ntitle }</a></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="4" align="right"><input type="button" value="글작성"
					onclick="location.href='user_write.do'" /></td>
			</tr>
		</table>
	</div>
	<div id="section">
		<div class="container calendar-container">
			<div id="calendar" style="max-width: 900px; margin: 40px auto;"></div>
		</div>
	</div>

</body>
</html>