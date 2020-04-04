<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <title>Note</title>
   
   <link rel='shortcut icon'    href='img/logo-icon-dh.png'>
   <link rel='apple-touch-icon' href='img/logo-icon-dh.png'>
   
   <link rel='stylesheet' href='resources/css/style_header.css'>
   <link rel='stylesheet' href='resources/css/reponsive.css'>
   <link rel="stylesheet" href="resources/css/style1.css"/>
      
   <script src='resources/js/lib/jquery-1.12.4.min.js'></script>
   <script src='resources/js/lib/jquery.easing.1.3.js'></script>

   <script src='resources/js/section1.js'></script>
   <meta charset="UTF-8">

</head>
<body>

   <ul id='skip'>
      <li><a href='#'>메뉴바로가기</a></li>
      <li><a href='#'>메인바로가기</a></li>
      <li><a href='#'>하단바로가기</a></li>
   </ul>
   
   
   <header id='header'>
      <div class='header-wrap'>
         <ul class='pc floatclear'>
            <li>
               <p>
                  <a href='admin_main.do' class='btnLogo'>
                     <img src='resources/admin/img/logo/logo-icon-dh-white.png' alt=''>
                     <span>M_M_H</span>
                  </a>
               </p>
            </li>
            <li>
               <ul class='nav-wrap'>
                  <li>
                     <aside class='floatclear'>
                        <ul>
                           <c:choose>
                                <c:when test="${login.m_name==null}">
                                 <li><a href='register.do'>Join</a></li>
                                    <li><span>|</span></li>
                                    <li onclick="" class="btn-share"><a href='#'>Log in</a>
                                 </li>
                                </c:when>         
                                <c:otherwise>
                                   <li onclick=""><a href='logout.do'>Log out</a></li>
                                 </c:otherwise>
                            </c:choose>      
                        </ul>
                        
                     </aside>
                  </li>
                  <li>
                     <nav>
                        <ul>
                           <li><a href='notice.do' class='btn-main'>공지사항<span></span></a></li>
                           <li><a href='#' class='btn-main'>결제하기(유효성검사)<span></span></a></li>
                           <c:choose>
                                <c:when test="${login.m_name==null}">                               
                                </c:when>         
                                <c:otherwise>
                                   <li><a href='admin.do' class='btn-main' >MYPAGE<span></span></a></li>
                                </c:otherwise>
                            </c:choose>      
                        </ul>
                     </nav>
                  </li>
               </ul>   
            </li>
         </ul>
         
         <ul id='mobile-wrap'>   
            <li>               
               <ul class='mobile-left'>
                  <li>
                     <a href='#' class='left-mLogoBtn'><img src='resources/img/logo-icon-dh-white.png' alt=''></a>
                     <a href='#' class='closeBtn'><i>&#10005;</i></a>
                  </li>
                  <li>
                     <ul class='mobile-left-nav'>
                        <li><a href='#'>회사소개 </a></li>
                        <li><a href='#'>프로젝트예시  </a></li>
                        <li><a href='#'>공지사항</a></li>

                     
                        <li>
                           <ul>

                              <li>
                                 <p>
                                    <span><a href='#' target='_blank'><i class='fab fa-instagram'></i></a></span>
                                    <span><a href='#' target='_blank'><i class='fab fa-facebook-f'></i></a></span>
                                    <span><a href='#' target='_blank'><i class='fab fa-pinterest'></i></a></span>
                                    <span><a href='#' target='_blank'><i class='fab fa-twitter'></i></a></span>
                                    <span><a href='#' target='_blank'><i class='fab fa-linkedin-in'></i></a></span>
                                    <span><a href='#' target='_blank'><i class='fa fa-youtube-play'></i></a></span>
                                 </p>                                    
                              </li>
                           </ul>                           
                        </li>
                     </ul>
                  </li>
               </ul>
            </li>
            
            <li>
               <ul class='mobile'>
                  <li>
                     <h1><a href='#' class='mLogoBtn'><img src='resources/img/logo/logo-icon-dh-black.png' alt=''><span>말만해</span></a></h1>
                  </li>
                  <li>
                     <a href='#' class='appBarBtn'>
                        <i class='bar1 bar'></i>
                        <i class='bar2 bar'></i>
                        <i class='bar3 bar'></i>
                     </a>
                  </li>
                  <li>
                     <a href='#' class='searchBtn'>
                        <i class='fa fa-search'></i>
                     </a>
                  </li>
               </ul>
               
            </li>
         </ul>   
      </div>
   </header>
   
</body>
</html>