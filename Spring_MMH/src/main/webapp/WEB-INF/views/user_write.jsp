<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 리스트 및 피드백 보기 페이지</title>
<link rel="stylesheet" href="resources/board/css/user_write.css">

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css?ver=1"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- include summernote css/js-->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>
<!-- include summernote-ko-KR -->
<script src="resources/board/js/summernote-ko-KR.js"></script>
<!-- js/html2canvas.js -->
<!-- <script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script> -->

<script>
	$(document).ready(function() {
		$('#summernote').summernote({
			placeholder : '회의 내용을 기록하세요',
			height : 300, //에디터 높이
			minHeight : 370, //최소 높이
			maxHeight : null, //최대 높이
			focus : true, // 에디터 로딩 후 포커스 맞출지 여부
			lang : 'ko-KR' // 언어(한글)
		});
		//서머노트에 text 쓰기     
		//      $('#summernote').summernote('insertText',content);
		//서머노트 쓰기 비활성화
		//     $('#summernote').summernote('disable');
		//서머노트 쓰기 활성화
		//     $('#summernote').summernote('enable');
		//서머노트 리셋
		//     $('#summernote').summernote('reset');
		//마지막으로 한 행동 취소
		//     $('#summernote').summernote('undo');
		//앞으로 가기
		//     $('#summernote').summernote('redo');
	});

	//유효성 및 값 보내기
	function goWrite(frm) {
		//    console.log(frm)
		//       var nwriter = frm.nwriter.value;
		var nwriter = $("div[id='nwriter']").val();
		//       var ntitle = frm.ntitle.value
		var ntitle = $("input[name='ntitle']").val();
		var ncontent = frm.ncontent.value; //가끔 구문 인식이 안될 때가 있음.
// 		var ncontent = $("textarea[name='ncontent']").val(); //그때 대체사용할 구문

		//    if (ntitle.trim() == ''){
		//       document.getElementById('input_ntitle').value = '<p>제목없음</p>';
		// //       document.getElementById('input_ntitle').innerText = '<p>제목없음</p>';
		// //       document.getElementById('input_ntitle').innerHTML = '<p>제목없음</p>';
		//       alert("제목이 없어 '이름없음'으로 등록되었습니다.");
		//        return true;
		//    }
		if (ncontent.trim() == '') {
			alert("내용을 입력해주세요");
			return false;
		}

		//    console.log('서머노트 유효성검사, nno(log 4 中 1) : '+ nno);
		console.log('서머노트 유효성검사, ntitle(log 4中2) : ' + ntitle);
		console.log('서머노트 유효성검사, nwriter(log 4 中 3) : ' + nwriter);
		console.log('서머노트 유효성검사, ncontent(log 4中 4) : ' + ncontent);
		alert('저장할게요?');
		//   frm.submit();
		document.getElementById('subMitBtn').submit();

	}

	//var div = document.createElement('div');

	//-----------------------------------------------------------------------------//
</script>
<title>회의록 작성</title>
<%@ include file="header.jsp"%>
</head>
<body>

	<div>
		<!-- 전체 기능영역 -->
		<div>Meeting log</div>
		<div>${today }</div>
		<form action="save.do" method="post" id="subMitBtn"
			style="float: left;">
			<input type="text" name="nwriter" value="${user }">
			<input type="text" name="ntitle" style="width: 60%;"
				placeholder="제목을 입력하세요" />
			<!--  진한씨넨 이렇게함
               <input type="hidden" name="m_no" value="${dto.m_no}"/>
               <input type="hidden" name="m_id" value="${dto.m_id}"/>
               <input type="hidden" name="category" value="${dto.cr_category}" />
               <input type="hidden" name="cr_path" value="${dto.cr_path}">  -->
			<div id="wrap-ntextarea">
				<!-- 서머노트 영역  -->
<!-- 				<div id="summernote" style="float: left;"> -->
<!-- 					<div style="width: 60%; margin: auto;"> -->
<!-- 						<div class="summernotebody"> -->
							<textarea id="summernote" name="ncontent"></textarea>
<!-- 						</div> -->

						
<!-- 					</div> -->
<!-- 				</div> -->
			</div>
			<!-- 서머노트 종료 -->
			<input type="button" value="글 작성" style="float: right;"
				onclick="goWrite(subMitBtn);" /> 
			<input type="button" value="목록"
				onclick="location.href='user_list.do'" />

		</form>
		<div>
			<div style="float: left">
				
				<div id="info">
					<p id="info_start">오른쪽 마이크 버튼을 누르면 녹음이 시작됩니다.</p>
					<p id="info_speak_now">음성인식 중 입니다.</p>
					<p id="info_no_speech">
						음성이 감지되지 않았습니다. 당신은 조정해야 할 수도 있습니다 <a
							href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892">마이크
							설정</a>
					</p>
					<p id="info_no_microphone" style="display: none">
						마이크가 없습니다. 마이크가 설치되어 있고 그 <a
							href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892">마이크
							설정</a> 올바르게 구성되어 있습니다.
					</p>
					<p id="info_allow">위의 "허용"버튼을 클릭하여 마이크로폰.</p>
					<p id="info_denied">마이크 사용 권한이 거부되었습니다.</p>
					<p id="info_blocked">마이크 사용 권한이 차단되었습니다. 에 변경하려면 chrome : //
						settings / contentExceptions # media-stream으로 이동하십시오.</p>
					<p id="info_upgrade">
						이 브라우저에서는 Web Speech API를 지원하지 않습니다. 로 업그레이드 <a
							href="//www.google.com/chrome">Chrome</a> 버전 25 이상.
					</p>
				</div>				
				<div class="right">
					<button id="start_button" onclick="startButton(event)">
						<img id="start_img" src="./resources/img/mic.gif" alt="Start">
					</button>
				</div>
				<div id="results">
					<span id="final_span" class="final"></span> <span id="interim_span"
						class="interim"></span>
					<p>
				</div>
				<div class="center">
					<div class="sidebyside" style="text-align: right">
						<button id="copy_button" class="button" onclick="copyButton()">
							글 문장 복사하기</button>
						<div id="copy_info" class="info">
							글 문장을 복사할려면 눌러주세요. (Control-C)<br>(Command-C on Mac.)
						</div>
					</div>
					<div class="sidebyside">
						<button id="email_button" class="button" onclick="emailButton()">
							이메일로 보내기</button>
						<div id="email_info" class="info">
							기본 이메일 애플리케이션으로 전송 된 텍스트<br> (chrome : // settings /
							handlers를 변경합니다)
						</div>
					</div>
					<p>
					<div id="div_language">
						<select id="select_language" onchange="updateCountry()"></select>
						&nbsp;&nbsp; <select id="select_dialect"></select>
					</div>
				</div>

			</div>



			<div id="section">
				<!-- 음성녹음 및 버튼 영역 -->
				<div id="text-voice">
					<input type="text" id="text-voice" placeholder="음성녹음 텍스트로 적히는 공간">
				</div>
				<div id="voice">음성녹음 버튼 들어갈자리</div>
			</div>

		</div>
	</div>
	<!-- 전체 기능영역 종료 -->
</body>
</html>