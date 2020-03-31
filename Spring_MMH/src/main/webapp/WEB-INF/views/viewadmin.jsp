<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
								<h2>ADMIN VIEW
									<i></i>
								</h2>
							</li>
							<li>
								<table border = "1" class="tabl">
									<c:choose>
										<c:when test = "${empty list }">
									    	<tr><td colspan="4">---------------작성된 글이 없다-------------</td></tr>
									         </c:when>
									         <c:otherwise>
									            <c:forEach items = "${list }" var = "dto">
									               <tr>
									                  <td>${dto.myno}</td>
									                  <td>${dto.myname}</td>
									                  <td><a href = "select.do?myno=${dto.myno }">${dto.mytitle}</a></td>
									                  <td>${dto.mydate}</td>
									               </tr>
									          </c:forEach>
										</c:otherwise>
									</c:choose>
									<tr>
										<td colspan="4" align="right">

										</td>
									</tr>
								</table>
								<li>
								<h2>
									<i></i>
									<input type="button" value="글작성" onclick="location.href='insertform.do'"/>
								</h2>
								</li>
							</li>
						</ul>
					</li>
					<li>
						<ul>
							<li>
								<h2>
									File Upload
									<i></i>
								</h2>
							</li>
							<li>
								<form:form method="post" enctype="multipart/form-data" 
											modelAttribute="uploadFile" action="upload.do" >
									file<br/>
									<input type="file" name="mpfile"/><br/>
									<select name="no">					 
										<option value="1">
											1번 사진               
										</option>						 
										<option value="2">
											2번 사진                
										</option>
										<option value="3">
											3번 사진               
										</option>
									</select>
									<p style="color: red; font-weight: bold;"><form:errors path="mpfile"/></p>
							
									<input type="submit" value="send"/>
								</form:form>
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













