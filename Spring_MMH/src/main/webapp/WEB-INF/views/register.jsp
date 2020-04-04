<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
h1 {
   text-align: center;
}

form {
   margin: auto;
   width: 414px;
}

body {
   font: 13px/1 'Nanum Gothic', 'Roboto', 'Open Sans';
   color: #626262;
   background: #ffffff;
}

table {
   height: 10px;
   width: 5000px;
}

th {
   font-size: 20px;
   width: 116px;
   height: 42px;
}
</style>
<meta charset="UTF-8">
<title>Register</title>

<%@ include file="header.jsp" %>  

</head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script> 
<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript">
   function goPopup() {
      // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
      var pop = window.open("./jusoPopup.do", "juso",
            "width=570,height=420, scrollbars=yes, resizable=yes");

      // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
      //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
   }
   /** API 서비스 제공항목 확대 (2017.02) **/

   function jusoCallBack(roadAddrPart1, addrDetail, zipNo) {
      // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
      $("#addr").val("(" + zipNo + ") " + roadAddrPart1);
      $("#addr2").val(addrDetail);
   }
   
      //ID 유효성 검사
      function idChkConfirm() {
         var chk = document.getElementsByName('m_id')[0].title
         if (chk == "n") {  // 아이디중복체크 했으면 
            alert("아이디 중복체크를 먼저해주세요");
            document.getElementsByName("m_id")[0].focus();
         } else {
         }
      }

      
      var EmailCode = "";
      
      //이메일 인증 SMTP
      function verifyEmail(){
         $.ajax({
            url : "sendMail.do?to="+$("#m_email").val(),
            type: "post",
            contentType:"application/json",
            dataType : 'json',
            success : function(data) {
               alert("인증코드가 발급되었습니다.");
               EmailCode = data;
               console.log(EmailCode);
            },
            error : function(err) {
               alert("에러가 발생했습니다.\n브라우저 콘솔의 내용을 확인하세요.");
               console.log(err);
            }
         });
      }
      
      //인증코드 확인 함수
      function emailChk(){
      
         if($("#VerifyNum").val() == ""){
            alert("인증코드를 써주세요.");
         }else if($("#VerifyNum").val() != EmailCode){
            alert("인증코드가 일치하지 않습니다.");
         }else if ($("#VerifyNum").val() == EmailCode){
            alert("인증코드가 일치합니다.");
            $("#verifyBox").prop("checked", true);
         }
      }
      
      //id중복체크 하지않으면 회원가입이 안됨
      $(document).ready(function(e){
         
         var idx = false;
         
         $('#check').click(function(){
            $.ajax({
               url: "idCheck.do?m_id="+$("#m_id").val(),
               type: "POST",
               success: function(data){
                  if(data == 'true'){
                     idx=true;
                     $("#m_id").attr("readonly",true);
                     var html="<tr><td colspan='3' style='color: green'>사용가능</td></tr>";
                     $("#idCheck").empty();
                     $("#idCheck").append(html);
                     $("#m_id").attr("title",'y');
                  }else{
                     var html="<tr><td colspan='3' style='color: red'>사용불가능한 아이디 입니다.</td></tr>";
                     $("#idCheck").empty();
                     $("#idCheck").append(html);
                  }
               },
               error: function(){
                  alert("서버에러");
               }
            });
         });
      });

</script>
<body>
   
   <h1>회원가입</h1>

   <form action="sign.do" method="post" name="signFrm" id="signFrm">
      <table>
         <tr class="table-primary">
            <th>아이디 :</th>
            <td>
               <input title="n" id="m_id" type="text" name="m_id" placeholder="ID" required />
               <input id="check" type="button"value="중복" >
            </td>
         </tr>
         <tr>
            <td colspan=3 id="idCheck"></td>
         </tr>
         <tr class="table-primary">
            <th>비밀번호 :</th>
            <td><input type="password" name="m_pw" placeholder="PW"
               onclick="idChkConfirm();" ></td>
         </tr>
         <tr class="table-primary">
            <th>이름 :</th>
            <td><input type="text" name="m_name" placeholder="이름"
               onclick="idChkConfirm();" ></td>
         </tr>
         <tr class="table-primary">
            <th>이메일 :</th>
            <td>
               <input type="text" id="m_email" name="m_email" onclick="idChkConfirm();">
               <input type="button" value="Verify" onclick="verifyEmail();" id="verifyBtn"><br> Verify
               <input type="checkbox" value="Completed" disabled="disabled" id="verifyBox"> 인증번호: 
               <input type="text" value="" id="VerifyNum"> 
               <input type="button" value="확인" onclick="emailChk();" id="verifyChk">
            </td>
         </tr>

         <tr class="table-primary">

            <th>도로명 주소 :</th>
            <td><input id="addr" type="text" size="60" name="m_address"
               value="<c:if test="${not empty dto}">${dto.m_addr}</c:if>"
               onclick="goPopup();" readonly placeholder="클릭하면 도로명주소 입력가능!"><br />
               <input id="addr2" type="text" size="30" name="m_address2"
               value="<c:if test="${not empty dto}">${dto.m_addr2}</c:if>"
               placeholder="상세 주소를 입력해주세요" /></td>
         </tr>
         <tr class="table-primary">
            <td colspan="7">
               <input type="submit" value="가입하기"> 
               <input type="button" onclick="location.href='admin_main.do'" value="돌아가기" ></td>
         </tr>
      </table>
   </form>
   <%@ include file="footer.jsp" %> 
</body>
</html>