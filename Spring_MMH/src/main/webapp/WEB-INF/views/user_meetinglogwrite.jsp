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
 	    	height: 300, 						//에디터 높이
	        minHeight: 370,						//최소 높이
	        maxHeight: null,					//최대 높이
	        focus: true, 						// 에디터 로딩 후 포커스 맞출지 여부
	        lang : 'ko-KR'						// 언어(한글)
	  });
//서머노트에 text 쓰기	  
// 	  $('#summernote').summernote('insertText',content);
//서머노트 쓰기 비활성화
//	  $('#summernote').summernote('disable');
//서머노트 쓰기 활성화
//	  $('#summernote').summernote('enable');
//서머노트 리셋
//	  $('#summernote').summernote('reset');
//마지막으로 한 행동 취소
//	  $('#summernote').summernote('undo');
//앞으로 가기
//	  $('#summernote').summernote('redo');
});

//유효성 및 값 보내기
function goWrite(frm) {	
// 	console.log(frm)
	
	var ntitle = frm.ntitle.value;
	var nwriter = frm.nwriter.value;
	var ncontent = frm.ncontent.value;		//가끔 구문 인식이 안될 때가 있음.
// 	var ncontent = $("textarea[name='ncontent']").val(); //그때 대체사용할 구문
	
//	var ntop = document.getElementById("summernote").getAttribute("top",500);
//	var ntop = $("#summernote[top=500]");
//	var nleft = $("#summernote[left]");

//	document.getElementById("summernote").setAttribute("","")
	
// 	if (ntitle.trim() == ''){
// 		document.getElementById('input_ntitle').value = '<p>제목없음</p>';
// // 		document.getElementById('input_ntitle').innerText = '<p>제목없음</p>';
// // 		document.getElementById('input_ntitle').innerHTML = '<p>제목없음</p>';
// 		alert("제목이 없어 '이름없음'으로 등록되었습니다.");
//  		return true;
// 	}
	if (ncontent.trim() == ''){
		alert("내용을 입력해주세요");
		return false;
	}


// 	console.log('서머노트 유효성검사, nno(log 4 中 1) : '+ nno);
	console.log('서머노트 유효성검사, ntitle(log 4中2) : '+ ntitle);
	console.log('서머노트 유효성검사, nwriter(log 4 中 3) : '+ nwriter);
	console.log('서머노트 유효성검사, ncontent(log 4中 4) : '+ ncontent);
	alert('sdsd');
//	frm.submit();
	document.getElementById('subMitBtn').submit();

}


//var div = document.createElement('div');

</script>


<style type="text/css">

#summernote{ position : sticky; width: 500px; height:300px; top:150px; left : 150px;}

.poit{ position : absolute;}


</style>
</head>
<body>
<h2 style="text-align: center;">글 작성</h2><br><br><br>

<div>
<div style="width: 60%; margin: auto;">
<div></div>
	<form action="save.do" method="post" id="subMitBtn">	//1
		<input id="input_ntitle" type="text" name="ntitle" style="width:20%;" placeholder="제목을 입력하세요"/>
		<input type="text" name="nwriter" style="width:20%;" placeholder="작성자를 입력하세요"/>
<!--  진한씨넨 이렇게함
				<input type="hidden" name="cr_no" value="${dto.cr_no}"/>
               <input type="hidden" name="cr_placeid" value="${dto.cr_placeid}"/>
               <input type="hidden" name="category" value="${dto.cr_category}" />
               <input type="hidden" name="cr_path" value="${dto.cr_path}">  -->

	<div class="summernotebody"> 
		<textarea id="summernote" name="ncontent" ></textarea> //2
		
		<!-- 메모장들 이곳저곳 들어가게 태그 생성 -->
		
	<!-- createElement() form자식요소에 appendChild.appendChild.addClass() ->  -->	
		<div class ="poit"></div>
		<div class ="poit"></div>
		<div class ="poit"></div>
		
 		<input type="button" value="글 작성" style="float: right;" onclick="goWrite(subMitBtn);"/>	
		<input type="button" value="목록" onclick="location.href='user_list.do'"/>
	</div>

	</form>
<div></div>
</div>
</div>
</body>
</html>