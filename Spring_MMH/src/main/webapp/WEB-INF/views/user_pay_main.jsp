<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제1 페이지</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>

<script type="text/javascript">
	function fnSubmit(){
		$.ajax({
		    url:'kakaoPay.do', //request 보낼 서버의 경로
		    type:'post', // 메소드(get, post, put 등)
		    data:{
		    		'pay_param': 'new'
		    	}, //보낼 데이터
		    success: function(data) {
		        //서버로부터 정상적으로 응답이 왔을 때 실행
		        window.location.href = data.next_redirect_pc_url;
		    },
		    error: function(err) {
		        //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
		    }
		});
		
		event.preventDefault();
	}
</script>
</head>
<body>

<div style="width: 500px; height: 400px;" align="center">
   <h2>
      <img alt="" src="" style="width: 250px; height: 100px;"><br>
      <b>지금 바로 결제하세요!</b><br><br>
      <input type="button" value="카카오 페이" onclick="fnSubmit();"style="background-color:yellow; border: none; width: 100px; height: 30px"><br><br>
	  <a> </a>
      <a href=""></a>
   </h2>
</div>
		




</body>
</html>