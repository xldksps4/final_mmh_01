<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제1 페이지</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>

<%@ include file="header.jsp" %>  
<script type="text/javascript">
	function fnSubmit(){
		$.ajax({
		    url:'kakaoPay.do', //request 보낼 서버의 경로
		    type:'post', // 메소드(get, post, put 등)
		    data:{
		    		'pay_param': 'new',
		    		'm_id': $('#m_id').val()
		    	}, //보낼 데이터
		    success: function(data) {
		        //서버로부터 정상적으로 응답이 왔을 때 실행
		        window.open(data.next_redirect_pc_url,'KaKaoPay', "width=450px; height=500px;");
		    },
		    error: function(err) {
		        //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
		    }
		});
		
		event.preventDefault();
	}
</script>
<style type="text/css">
#wrap{
    width:100%;
    height:50%;
    position:relative;
} 
#wrap .box{ 
    width:500px;
    height:400px;
    position:absolute;
    left:50%;
    top:50%;
    margin-left:-250px;
    margin-top:-150px;
    text-align: center;
}
</style>
</head>
<body>
	<div id="wrap">
		<div class="box">
		   <h2><b>지금 바로 결제하세요!</b></h2><br>
		   <h2>\7900</h2><br>
		      <input type="button" value="카카오 페이" onclick="fnSubmit();"style="background-color:yellow; border: none; width: 100px; height: 30px">
		      <input type="hidden" id="m_id" value="${login.m_id}">
		</div>
	</div>
   <%@ include file="footer.jsp" %> 
</body>
</html>