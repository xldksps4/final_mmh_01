<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
         $("#header1").load("header_nolog.html");
       	$("#footer1").load("footer.html");
        /* id 지정을 통해서도 가능합니다. 
         $("#header").load("header.html #navbar")
         */       
      });
</script>
<style>
h1{text-align: center; padding-top:5%; }
#header1{position: relative;}
#main1{position: relative; width:100%; height:80%; text-align: center;}

#footer1{position: relative;}
.tabl{margin:auto; padding-top:5%; padding-bottom: 10% }
#noticeform{height:450px}
#a{text-align: right;}
#b{font-size: 20px; color: #fff}

</style>


</head>

<body>
<!-- 	
	<header>
		<div id="header1"></div>
	</header>
 -->	
 	<jsp:include page="header.jsp"></jsp:include>
	<h1 id="b">이전 공지사항</h1>
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
			                  <td><a href = "detail.do?myno=${dto.myno }">${dto.mytitle}</a></td>
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
	<footer>
		<div id="footer1"></div>
	</footer>
</body>
</html>














