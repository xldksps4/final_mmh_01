<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src='resources/js/header.js'></script>
<script src="resources/js/script1.js"></script>
<script src='resources/js/section1.js'></script>
<script src='resources/js/section2.js'></script>
<script type="text/javascript">
      $(document).ready(function(){
         $("#header1").load("header.html");
       	$("#footer1").load("footer.html");
        /* id 지정을 통해서도 가능합니다. 
         $("#header").load("header.html #navbar")
         */       
      });
</script>
<style>

#header1{position: relative;}
#main1{position: relative; width:100%; height:80%; text-align: center;}
#k{margin:auto; margin-top: 5%}
#footer1{position: relative;}
.tabl{margin:auto}

</style>
<body>
 	<jsp:include page="header.jsp"></jsp:include>

			<section id='section2' class='section'>
			<div class='section2-wrap'> <!-- 창너비$(window).innerWidth()(50%) * 창높이 auto(좌측높이로 설정) -->
				<ul class='section2-box-wrap floatclear'>
					<li>
						<ul>
							<li>
								<h2>USER VIEW
									<i></i>
								</h2>
							</li>
							<li>
								<h1>상세 글 보기</h1>
								
									<table border="1">
										<tr>
											<th>아이디</th>
											<td>${dto.m_id }</td>
										</tr>
  									<tr>
											<th>작성자</th>
											<td>${dto.m_name }</td>
										</tr>
										<tr>
											<th>주소</th>
											<td>${dto.m_address }</td>
											
										</tr>
										<tr>
											<td colspan="2">
												<input type="button" value="수정" onclick="location.href='user_info_write.do'"/>

											</td>
										</tr>

									</table>

							</li>
						</ul>
					</li>


					
				</ul>
			</div>
	


	</section>

	<footer>
		<div id="footer1"></div>
	</footer>

</body>
</html>













