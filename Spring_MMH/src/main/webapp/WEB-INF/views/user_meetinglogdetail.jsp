<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<link href="./resources/js/user_meetinglogwrite.js" rel="javascript"/>
<title>회의록 글 보기 페이지</title>
</head>
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
<script type="text/javascript">
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
	  $('#summernote').summernote('disable');
	}); 
</script>
<body>

	
   <section class="section">
      <article id="article_header">
         <div class="div_title">
            <span class="span_title" style="margin-top: 5px;">글제목넣을까</span> 
         </div>
      </article>
      <article id="article_writeSection">
         <div class="write_div">
            <form action="nodelete.do" method="POST">
<%--                <input type="hidden" name="select_opno" value="${select.opno}"/> --%>
<%--                <input type="hidden" name="cr_placeid" value="${dto.cr_placeid}"/> --%>
<%--                <input type="hidden" name="category" value="${dto.cr_category}" /> --%>
<%--                <input type="hidden" name="cr_path" value="${dto.cr_path}"> --%>
               <div class="div_writeHead">
                  <div class="div_titleForm">
                     <p class="p_title">
                        <span>제목</span><input type="text" name="select_title" value="${select.ntitle}"/>
                     </p>
                  </div>
               </div>
               
               <div class="div_writeMiddle">
                  <textarea id="summernote" name="select_content">${select.ncontent}</textarea>
               </div>
               <div class="div_writeFoot">
                  <input type="submit" value="삭제" />
                  <input type="button" value="목록" onclick="location.href='user_list.do'"/>
               </div>
            </form>
         </div>
      </article>
   </section>
	
	
</body>
</html>