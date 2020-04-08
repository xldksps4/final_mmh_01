<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
   request.setCharacterEncoding("UTF-8");
%>
<%
   response.setContentType("text/html; charset=UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang='ko'>
<head>
<title>Note</title>
<%@ include file="header.jsp" %>  
<meta charset='utf-8'>
<meta name='Viewport'
   content='width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.6'>
<meta name='Title' content='MMH'>
<meta name='Subject' content='MMH'>
<meta name='Keywords' content='MMH'>
<meta name='Author' content='Do'>
<meta name='Publisher' content='1Jo'>
<meta name='Description' content='good tool'>
<meta name='Classification'
   content='A Walk Across Time LA PURIFICADORA, PUEBLA, MEXICO'>
<meta name='Location' content='Seoul Korea'>
<meta name='Author-Date' content='2020.03.30'>
<meta name='Copyright' content='MMH'>
<meta name='Robots' content='index,follow'>

<script src='resources/js/lib/jquery-1.12.4.min.js'></script>
<script src='resources/js/lib/jquery.easing.1.3.js'></script>
<!-- <script src='js/lib/prefixfree.min.js'></script> -->
<!-- 브라우저별 확장자 적용에서 해방시켜주는 js  -->

<script type="text/javascript">
   $(function() {
      $("#loginChk").hide();
   });
   function login() {
      var m_id = $("#m_id").val().trim();
      var m_pw = $("#m_pw").val().trim();
      console.log(m_id);
      console.log(m_pw);
      //console.log(memberid + "/" + memberpw);
      var loginVal = {
         "m_id" : m_id,
         "m_pw" : m_pw
      };
      if (m_id == null || m_id == "" || m_pw == null || m_pw == "") {
         alert("ID 및 pw를 확인해 주세요...");
      } else {
         $.ajax({
            type : "post",
            url : "loginajax.do",
            data : JSON.stringify(loginVal),
            contentType : "application/json",
            dataType : "json",
            success : function(msg) {
               console.log(msg);
               if (msg.check == true) {
                  if (msg.admin == true) {
                     location.href = 'admin_main.do';
                  } else {
                     location.href = 'user_list.do';
                  }
               } else {
                  $("#loginChk").show()
                  $("#loginChk").html("ID 혹은 PW가 잘못되었습니다...");
               }
            },
            error : function() {
               alert("통신 실패");
            }
         });
      }
   }


</script>

<style type="text/css">
input::placeholder {
   color: black;
}

input, select, textarea {
   box-shadow: none;
   -webkit-appearance: none;
   appearance: none;
   border-radius: 0;
   outline: 0;
   background-image: none;
}

input:focus, select:focus, textarea:focus {
   outline: 1px solid #626262;
   color: black;
}

legend {
   display: none;
}

h1, h2, h3, h4, h5, h6 {
   font-size: 24px;
   color: #626262;
   font-weight: 400;
   color: white;
}

a {
   color: #000000;
   text-decoration: none;
}

* {
   margin: 0;
   padding: 0;
   vertical-align: top;
   border: 0;
   color: white;
}

body {
   font: 13px/1 'Nanum Gothic', 'Roboto', 'Open Sans';
   color: #626262;
   background: #ffffff;
}


</style>
</head>
<body>
   <div id='wrap'>

      <ul id='skip'>
         <li><a href='#'>메뉴바로가기</a></li>
         <li><a href='#'>메인바로가기</a></li>
         <li><a href='#'>하단바로가기</a></li>
      </ul>


      <main id='main'>
      <section id='section1' class='section'>
         <div class='section1-wrap'>
            <!-- 창너비$(window).innerWidth()(100%) * 창높이 창너비$(window).innerHeight() -->
            <h2 class='hidden'>main video</h2>
            <video id='video1' class='video main-video' autoplay="autoplay"
               poster='resources/admin/img/main/GS-OE-kenoa-exclsuive-beach-spa-and-resort.jpg'><!-- 동영상 부재 시 이미지-->
               <source src='resources/admin/mov/main/mainvideo.mp4' type='video/mp4'>
            </video>

            <div class='section1-modal'>
               <ul>
                  <li>LOG IN</li>
                  <li>
                     <table border="1" id="rands">
                        <tr >
                           <td style="color: black;">ID</td>
                           <td colspan="2"><input placeholder=" 클릭하면 아이디를 입력할 수 있습니다." type="text" name="m_id" id="m_id" style="width:270px; height:25px;font-size:15px; color: black"; /></td>
                        </tr>
                        <tr>
                           <td style="color: black;">PW</td>
                           <td><input placeholder=" 클릭하면 비밀번호를 입력할 수 있습니다." type="password" name="m_pw" id="m_pw" style="width:263px; height:22px;font-size:14px; padding:0; color: black";/></td>
                        </tr>
                        <tr>
                        <tr>
                           <td colspan="2">
                              <input type="button" value="LOGIN" style="color: black;" onclick="login();" >
                           </td>
                        </tr>
                     </table>
                  </li>
                  
                  <li>
                     <a href='#' class='iconBt'><i style="color: black;" class='fab fa-facebook-f'></i></a>
                     <a href='#' class='iconBt'><i style="color: black;" class='fab fa-twitter'></i></a> 
                     <a href='#' class='iconBt'><i style="color: black;" class='fab fa-linkedin-in'></i></a> 
                     <a href='#' class='iconBt'><i style="color: black;" class="material-icons">gmail</i></a>
                  </li>
                  <li>
                     <input type="button" value="X" onclick="" style="color: black;"/>
                  </li>
               </ul>
            </div>

            <div class='section1-bottom-icon-btn-wrap'>
               <div>
                  <ul>
                     <li>
                        <ul class='floatclear'>
                           <li><a href='#' class='btn-icon-video addIconBt'><i
                                 class='fas fa-video'></i></a></li>
                           <li><a href='#' class='btn-icon-map btn-share'>  <!-- 지도 넣을 버튼 -->
                           <i class='fas fa-globe'></i></a></li>
                        </ul>
                     </li>
                     <li>
                        <ul class='floatclear'>
                           <li><a href='#' class='btn-icon-down'><i
                                 class='fa fa-angle-down'></i></a></li>
                        </ul>
                     </li>
                     <li>
                        <ul class='floatclear'>
                           <li><a href='#' class='btn-icon-play'><i
                                 class='fas fa-pause'></i></a></li>
                           <li><a href='#' class='btn-icon-mute'> <i
                                 class='fas fa-volume-up'></i></a></li>
                        </ul>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </section>

      <section id='section2' class='section'>
         <div class='section2-wrap'>
            <!-- 창너비$(window).innerWidth()(50%) * 창높이 auto(좌측높이로 설정) -->
            <ul class='section2-box-wrap floatclear'>
               <li class="table_tag_move">
                  <br/>
                  <h1 class="h_tag_title" >회사소개</h1>
                  <br/>
                  <ul>
                     <li>신규 프로젝트 생성 시 결제가 필요합니다.</li>
                     <li>기존 프로젝트의 경우 사용 기간이 지나면 신규 작성 및 수정은 불가합니다.</li>
                     <li>※단, 사용기간이 지났더라도 기존 프로젝트에서 작성한 문서를 확인할 수 있습니다.</li>
                  </ul>  
               </li>
               <li class="table_tag_move">
                  <br/>
                  <h1 class="h_tag_title" >공지사항</h1>
                  <br/>
                  <table>
                     <tr>
                        <th>번호</th>
                        <th>제목</th>
                     </tr>
                     <c:choose>
                        <c:when test="${empty list }">
                           <tr>
                              <td colspan="2">-----작성된 공지사항이 없습니다-----</td>
                           </tr>
                        </c:when>
                        <c:otherwise>
                           <c:forEach items="${list }" var="dto">
                              <tr>
                                 <td>${dto.nno }</td>
                                 <td>${dto.ntitle }</td>
                              </tr>
                           </c:forEach>
                        </c:otherwise>
                     </c:choose>
                  </table>
               </li>
            </ul>
         </div>
         <div id="brandVisual">
            <ul>
               <li class="visual_0"><a href="#">배너이미지1</a></li>
               <li class="visual_1"><a href="#">배너이미지 2</a></li>
               <li class="visual_2"><a href="#">배너이미지 3</a></li>
            </ul>
         </div>

         <div class="btnImg">
            <img src="resources/admin/img/left.png" alt="" class="prev" width='30'
               height='50' /> <img src="resources/admin/img/right.png" alt=""
               class="next" width='30' height='50' />
         </div>
      </section>
      </main>
   </div>
   <%@ include file="footer.jsp" %> 
</body>
</html>


