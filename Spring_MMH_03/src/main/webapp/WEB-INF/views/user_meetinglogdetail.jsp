<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회의록 글 보기 페이지</title>
<link href="./resources/js/user_meetinglogwrite.js" rel="javascript"/>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

</script>
<body>

	<h2>서머노트 내용(dto.ncontent): ${dto.ncontent}</h2>
	<h2>서머노트 내용(select.ncontent): ${select.ncontent}</h2>
	<h3>서머노트 내용(select): ${select} }</h3>
	
	<div class="aaa">
	  <div class="bbb">
        <div class="ccc"></div>
        <div class="ddd"></div>
        <div class="eee"></div>
        <div class="fff"></div>
        <div class="ggg"></div>
        <div class="hhh"></div>
        <div class="iii"></div>
        <div class="jjj"></div>
        <div class="kkk"></div>
        <div class="lll"></div>
        <div class="mmm"></div>
        <div class="nnn"></div>
      </div>
    </div>
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