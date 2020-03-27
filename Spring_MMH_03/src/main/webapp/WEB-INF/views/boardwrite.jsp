<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<title>글쓰기</title>

<script>
//글 작성
$(document).ready(function() {
	  $('#summernote').summernote({
 	    	placeholder: '회의 내용을 기록하세요',
	        minHeight: 370,
	        maxHeight: null,
	        focus: true, 
	        lang : 'ko-KR'
	  });
});

//유효성 및 값 보내기
function goWrite(frm) {	
// 	console.log(frm)
	
	var ncontent = frm.ncontent.value;		//얘 왜안돼?
	var nwidth = $("#summernote[width]")
	var nheight = $
// 	var ncontent = $("textarea[name='ncontent']").val();
	console.log('서머노트 유효성검사, ncontent(log 2 中 2) : '+ ncontent);
//
//	if (ncontent.trim() == ''){
//		alert("내용을 입력해주세요");
//		return false;
//	}
	
//	frm.submit();
	document.getElementById('subMitBtn').submit();

}


//var div = document.createElement('div');

</script>


<style type="text/css">

#summernote{ position : sticky; }

.poit{ position : absolute;}


</style>
</head>
<body>
<h2 style="text-align: center;">글 작성</h2><br><br><br>

<div>
<div style="width: 60%; margin: auto;">
<div></div>
	<form method="post" action="save.do" id="subMitBtn">	//1
<!-- <input type="hidden" name="" value=""/>  --><!-- 로그인 상태에서 게시물 작성 시, 같이 보낼 값 -->

	<div> 
		<textarea id="summernote" name="ncontent" ></textarea> //2
		
		<!-- 메모장들 이곳저곳 들어가게 태그 생성 -->
		
	<!-- createElement() form자식요소에 appendChild.appendChild.addClass() ->  -->	
		<div class ="poit"></div>
		<div class ="poit"></div>
		<div class ="poit"></div>
		
 		<input id="subBtn" type="button" value="글 작성" style="float: right;" onclick="goWrite(subMitBtn);"/>
		
	</div>
<!-- 		<input type="submit" value="글작성"/> -->

	</form>
<div></div>
</div>
</div>
</body>
</html>