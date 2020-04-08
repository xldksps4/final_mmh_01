<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글보기, 화면 캡쳐 및 페이지 드로잉</title>
<!-- ----------------서머노트---------------- -->
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
<!-- ----------------화면 캡쳐---------------- -->
<!-- js/html2canvas.js -->
<!-- <script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-alpha1/html2canvas.js"></script>
<!-- ----------------토스트 이미지 에디터---------------- -->
<link type="text/css"
	href="https://uicdn.toast.com/tui-color-picker/v2.2.3/tui-color-picker.css"
	rel="stylesheet">
<link type="text/css" href="resources/nhnimg/css/service-basic.css"
	rel="stylesheet">
<link href="resources/nhnimg/js/theme/white-theme.js">
<!-- Failed to load resource: the server responded with a status of 404 () 해결 위해서 아래 링크추가, head태크에 profile추가 -->
<!-- <link rel="icon" type="image/png" href="http://example.com/myicon.png"> -->


<script type="text/javascript">
//----------------서머노트----------------//
$(document).ready(function() {
    $('#summernote').summernote({
       placeholder : '작성된 내용이 없습니다.',
       height : 300, //에디터 높이
       minHeight : 370, //최소 높이
       maxHeight : null, //최대 높이
       focus : true, // 에디터 로딩 후 포커스 맞출지 여부
       lang : 'ko-KR' // 언어(한글)
    });
    //서머노트 쓰기 비활성화
    $('#summernote').summernote('disable');
 });

//----------------화면 캡쳐----------------//
function bodyShot() {
    //전체 스크린 샷하기
    html2canvas(document.body)
    //document에서 body 부분을 스크린샷을 함.
        .then(
            function (canvas) {
                //canvas 결과값을 drawImg 함수를 통해서 
                //결과를 canvas 넘어줌.
                //png의 결과 값 
                drawImg(canvas.toDataURL('image/png'));

                //appendchild 부분을 주석을 풀게 되면 body 
                //document.body.appendChild(canvas);

                //특별부록 파일 저장하기 위한 부분.
                saveAs(canvas.toDataURL(), 'file-name.png');
            }).catch(function (err) {
                console.log(err);
            });
}

function partShot() {
    //특정부분 스크린샷
    html2canvas(document.getElementById("container"))
    //id container 부분만 스크린샷
        .then(function (canvas) {
            //jpg 결과값
            drawImg(canvas.toDataURL('image/jpeg'));
            //이미지 저장
            saveAs(canvas.toDataURL(), 'file-name.jpg');
        }).catch(function (err) {
            console.log(err);
        });
}

function drawImg(imgData) {
    console.log(imgData);
    //imgData의 결과값을 console 로그롤 보실 수 있습니다.
    return new Promise(function reslove() {
        //내가 결과 값을 그릴 canvas 부분 설정
        var canvas = document.getElementById('canvas');
        var ctx = canvas.getContext('2d');
        //canvas의 뿌려진 부분 초기화
        ctx.clearRect(0, 0, canvas.width, canvas.height);

        var imageObj = new Image();
        imageObj.onload = function () {
            ctx.drawImage(imageObj, 10, 10);
            //canvas img를 그리겠다.
        };
        imageObj.src = imgData;
        //그릴 image데이터를 넣어준다.

    }, function reject() { });

}
function saveAs(uri, filename) {
    var link = document.createElement('a');
    if (typeof link.download === 'string') {
        link.href = uri;
        link.download = filename;
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    } else {
        window.open(uri);
    }
}

   


</script>

<%@ include file="header.jsp"%>

</head>
<body>
	<!-- 화면 캡쳐 사용 위해서 필수적인 요소 id && class  -->
	<div class="container" id='container' style="float: left; width: 756px; height: 1123px;">
      <div class="btn_capture">
		<div>Meeting log</div>
		<div>${dto.ntoday }</div>
		<!-- 서머노트 기능영역 -->
		<!--       <form action="save.do" method="post" id="subMitBtn" -->
		<!--          style="float: left;"> -->
		<input type="text" name="nwriter" value="${dto.nwriter }" /> 
		<input type="text" name="ntitle"  value="${dto.ntitle} }" style="width: 60%;" />
		<div id="wrap-ntextarea">
			<!--             <div id="summernote" style="float: left;"> -->
			<!--                <div style="width: 60%; margin: auto;"> -->
			<!--                   <div class="summernotebody"> -->
			<textarea id="summernote" name="ncontent">${dto.ncontent }</textarea>
			<!--                   </div> -->
			<!--                </div> -->
			<!--             </div> -->
		</div>
		<!-- 서머노트 종료 -->
		<input type="button" value="삭제" style="float: right;"
			onclick="location.href='ndelete.do?nno=${dto.nno}'" /> 
		<input type="button" value="목록"
			onclick="location.href='user_list.do?opno=${dto.opno}&nno=${dto.nno }'" />
		<!--       </form> -->
	  <button onclick=bodyShot()>전체캡쳐</button>
	<button onclick=partShot()>부분캡쳐</button>
	  </div>
	</div>
<!-- 서머노트 기능영역 종료 -->

<!-- 화면 캡쳐 결과물이 canvas태그에서 보여진다. -->
	<div style="float: right;">
	<canvas id="canvas" style="float: left; 
	 border: 1px solid #d3d3d3;"></canvas>
	</div>


<!-- width: 756px; height: 1123px;  -->

</body>
</html>