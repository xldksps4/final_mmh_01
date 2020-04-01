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
         $("#header1").load("header.html");
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
.tabl{margin:auto; padding-top:5%; }
#noticeform{height:450px}
#a{text-align: right;}
#b{font-size: 20px; color: #fff}

</style>


</head>

<body>
 	<jsp:include page="header.jsp"></jsp:include>
	<h1 id="b">글쓰기</h1>
	<form action="insertres.do" method="post" id="noticeform">
		<table border="1" class="tabl">

			<input type="hidden" name="myname" value="${login.m_name }"/>

			<tr>
				<th>제목</th>
				<td><input type="text" name="mytitle"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="60" name="mycontent"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" id="a">
					<input type="submit" value="글작성"/>
					<input type="button" value="취소" onclick="location.href='admin.do'" />
				</td>
			</tr>
		</table>

	</form>
	<footer>
		<div id="footer1"></div>
	</footer>
</body>
</html>














