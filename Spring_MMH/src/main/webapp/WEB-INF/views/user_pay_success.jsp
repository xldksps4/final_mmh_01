<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제2 페이지</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>

<script type="text/javascript">
	function goback() {
		opener.location.href = 'admin_main.do';
		close();
	}
</script>
</head>
<body>
	
	<h1>${login.m_id}</h1>
	<h1>카카오페이 결제 완료</h1>
	<br/><br/>
	
	<h3><b>결제정보</b></h3>
	<table border="1">
	<tr>
		<th>결제일시:</th>
		<td>[[${info.approved_at}]]</td>
	</tr>
	<tr>		
		<th>주문번호:</th>
		<td>[[${info.partner_order_id}]]</td>
	</tr>		
		
	<tr>		
		<th>상품수량:</th>
		<td>[[${info.quantity}]]</td>
	</tr>		
		
	<tr>		
		<th>결제금액:</th>
		<td>[[${info.amount.total}]]</td>
	</tr>		
	</table>
	<br>
		<input type="button" value="X back" onclick="goback();" style="border: none; float: right; bottom:0px; margin-bottom: 0px;">

</body>
</html>