<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- include libraries(jQuery, bootstrap) -->
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
   rel="stylesheet">
<script
   src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
   src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link
   href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css"
   rel="stylesheet">
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<title>글쓰기, , user_write로 들어갈 예정</title>

<script>
   //글 작성
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

      var ntitle = frm.ntitle.value;
      var nwriter = frm.nwriter.value;
      var ncontent = frm.ncontent.value; //가끔 구문 인식이 안될 때가 있음.
      //    var ncontent = $("textarea[name='ncontent']").val(); //그때 대체사용할 구문

      //   var ntop = document.getElementById("summernote").getAttribute("top",500);
      //   var ntop = $("#summernote[top=500]");
      //   var nleft = $("#summernote[left]");

      //   document.getElementById("summernote").setAttribute("","")

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
      alert('sdsd');
      //   frm.submit();
      document.getElementById('subMitBtn').submit();

   }

   //var div = document.createElement('div');
</script>


<style type="text/css">
#summernote {
   position: sticky;
   width: 500px;
   height: 300px;
   top: 150px;
   left: 150px;
}

.poit {
   position: absolute;
}
* {
   font-family: Verdana, Arial, sans-serif;
}

a:link {
   color: #000;
   text-decoration: none;
}

a:visited {
   color: #000;
}

a:hover {
   color: #33F;
}

.button {
   background: -webkit-linear-gradient(top, #008dfd 0, #0370ea 100%);
   border: 1px solid #076bd2;
   border-radius: 3px;
   color: #fff;
   display: none;
   font-size: 13px;
   font-weight: bold;
   line-height: 1.3;
   padding: 8px 25px;
   text-align: center;
   text-shadow: 1px 1px 1px #076bd2;
   letter-spacing: normal;
}

.center {
   padding: 10px;
   text-align: center;
}

.final {
   color: black;
   padding-right: 3px;
}

.interim {
   color: gray;
}

.info {
   font-size: 14px;
   text-align: center;
   color: #777;
   display: none;
}

.right {
   float: right;
}

.sidebyside {
   display: inline-block;
   width: 45%;
   min-height: 40px;
   text-align: left;
   vertical-align: top;
}

#headline {
   font-size: 40px;
   font-weight: 300;
}

#info {
   font-size: 20px;
   text-align: center;
   color: #777;
   visibility: hidden;
}

#results {
   font-size: 14px;
   font-weight: bold;
   border: 1px solid #ddd;
   padding: 15px;
   text-align: left;
   min-height: 150px;
}

#start_button {
   border: 0;
   background-color: transparent;
   padding: 0;
}
</style>
</head>
<body>
   <h2 style="text-align: center;">글 작성</h2>
   <br>
   <br>
   <br>

   <div>
      <div style="width: 60%; margin: auto;" >
         <div>//1 </div>
         <form action="save.do" method="post" id="subMitBtn" style="float: left;">
            <input id="input_ntitle" type="text" name="ntitle" style="width: 20%;" placeholder="제목을 입력하세요" /> 
               <input type="text" name="nwriter" style="width: 20%;" placeholder="작성자를 입력하세요" />
            <!--  진한씨넨 이렇게함
            <input type="hidden" name="cr_no" value="${dto.cr_no}"/>
               <input type="hidden" name="cr_placeid" value="${dto.cr_placeid}"/>
               <input type="hidden" name="category" value="${dto.cr_category}" />
               <input type="hidden" name="cr_path" value="${dto.cr_path}">  -->

            <div class="summernotebody">
               <textarea id="summernote" name="ncontent"></textarea>
               //2

               <!-- 메모장들 이곳저곳 들어가게 태그 생성 -->

               <!-- createElement() form자식요소에 appendChild.appendChild.addClass() ->  -->
               <div class="poit"></div>
               <div class="poit"></div>
               <div class="poit"></div>

               <input type="button" value="글 작성" style="float: right;"
                  onclick="goWrite(subMitBtn);" /> <input type="button" value="목록"
                  onclick="location.href='user_list.do'" />
            </div>
         </form>
         
         <div style="float: left">
            <h1 class="center" id="headline">MMH 음성인식 기능</h1>
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
               <span id="final_span" class="final"></span> <span id="interim_span"   class="interim"></span>
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
      </div>
   </div>
</body>

<script type="text/javascript">
var langs =
   [['Afrikaans',       ['af-ZA']],
    ['Bahasa Indonesia',['id-ID']],
    ['Bahasa Melayu',   ['ms-MY']],
    ['Català',          ['ca-ES']],
    ['Čeština',         ['cs-CZ']],
    ['Deutsch',         ['de-DE']],
    ['English',         ['en-AU', 'Australia'],
                        ['en-CA', 'Canada'],
                        ['en-IN', 'India'],
                        ['en-NZ', 'New Zealand'],
                        ['en-ZA', 'South Africa'],
                        ['en-GB', 'United Kingdom'],
                        ['en-US', 'United States']],
    ['Español',         ['es-AR', 'Argentina'],
                        ['es-BO', 'Bolivia'],
                        ['es-CL', 'Chile'],
                        ['es-CO', 'Colombia'],
                        ['es-CR', 'Costa Rica'],
                        ['es-EC', 'Ecuador'],
                        ['es-SV', 'El Salvador'],
                        ['es-ES', 'España'],
                        ['es-US', 'Estados Unidos'],
                        ['es-GT', 'Guatemala'],
                        ['es-HN', 'Honduras'],
                        ['es-MX', 'México'],
                        ['es-NI', 'Nicaragua'],
                        ['es-PA', 'Panamá'],
                        ['es-PY', 'Paraguay'],
                        ['es-PE', 'Perú'],
                        ['es-PR', 'Puerto Rico'],
                        ['es-DO', 'República Dominicana'],
                        ['es-UY', 'Uruguay'],
                        ['es-VE', 'Venezuela']],
    ['Euskara',         ['eu-ES']],
    ['Français',        ['fr-FR']],
    ['Galego',          ['gl-ES']],
    ['Hrvatski',        ['hr_HR']],
    ['IsiZulu',         ['zu-ZA']],
    ['Íslenska',        ['is-IS']],
    ['Italiano',        ['it-IT', 'Italia'],
                        ['it-CH', 'Svizzera']],
    ['Magyar',          ['hu-HU']],
    ['Nederlands',      ['nl-NL']],
    ['Norsk bokmål',    ['nb-NO']],
    ['Polski',          ['pl-PL']],
    ['Português',       ['pt-BR', 'Brasil'],
                        ['pt-PT', 'Portugal']],
    ['Română',          ['ro-RO']],
    ['Slovenčina',      ['sk-SK']],
    ['Suomi',           ['fi-FI']],
    ['Svenska',         ['sv-SE']],
    ['Türkçe',          ['tr-TR']],
    ['български',       ['bg-BG']],
    ['Pусский',         ['ru-RU']],
    ['Српски',          ['sr-RS']],
    ['한국어',            ['ko-KR']],
    ['中文',             ['cmn-Hans-CN', '普通话 (中国大陆)'],
                        ['cmn-Hans-HK', '普通话 (香港)'],
                        ['cmn-Hant-TW', '中文 (台灣)'],
                        ['yue-Hant-HK', '粵語 (香港)']],
    ['日本語',           ['ja-JP']],
    ['Lingua latīna',   ['la']]];

   for (var i = 0; i < langs.length; i++) {
     select_language.options[i] = new Option(langs[i][0], i);
   }
   select_language.selectedIndex = 6;
   updateCountry();
   select_dialect.selectedIndex = 6;
   showInfo('info_start');

   function updateCountry() {
     for (var i = select_dialect.options.length - 1; i >= 0; i--) {
       select_dialect.remove(i);
     }
     var list = langs[select_language.selectedIndex];
     for (var i = 1; i < list.length; i++) {
       select_dialect.options.add(new Option(list[i][1], list[i][0]));
     }
     select_dialect.style.visibility = list[1].length == 1 ? 'hidden' : 'visible';
   }

   var create_email = false;
   var final_transcript = '';
   var recognizing = false;
   var ignore_onend;
   var start_timestamp;
   if (!('webkitSpeechRecognition' in window)) {
     upgrade();
   } else {
     start_button.style.display = 'inline-block';
     var recognition = new webkitSpeechRecognition();
     recognition.continuous = true;
     recognition.interimResults = true;

     recognition.onstart = function() {
       recognizing = true;
       showInfo('info_speak_now');
       start_img.src = './resources/img/mic-animate.gif';
     };

     recognition.onerror = function(event) {
       if (event.error == 'no-speech') {
         start_img.src = './resources/img/mic.gif';
         showInfo('info_no_speech');
         ignore_onend = true;
       }
       if (event.error == 'audio-capture') {
         start_img.src = './resources/img/mic.gif';
         showInfo('info_no_microphone');
         ignore_onend = true;
       }
       if (event.error == 'not-allowed') {
         if (event.timeStamp - start_timestamp < 100) {
           showInfo('info_blocked');
         } else {
           showInfo('info_denied');
         }
         ignore_onend = true;
       }
     };

     recognition.onend = function() {
       recognizing = false;
       if (ignore_onend) {
         return;
       }
       start_img.src = './resources/img/mic.gif';
       if (!final_transcript) {
         showInfo('info_start');
         return;
       }
       showInfo('');
       if (window.getSelection) {
         window.getSelection().removeAllRanges();
         var range = document.createRange();
         range.selectNode(document.getElementById('final_span'));
         window.getSelection().addRange(range);
       }
       if (create_email) {
         create_email = false;
         createEmail();
       }
     };

     recognition.onresult = function(event) {
       var interim_transcript = '';
       for (var i = event.resultIndex; i < event.results.length; ++i) {
         if (event.results[i].isFinal) {
           final_transcript += event.results[i][0].transcript;
         } else {
           interim_transcript += event.results[i][0].transcript;
         }
       }
       final_transcript = capitalize(final_transcript);
       final_span.innerHTML = linebreak(final_transcript);
       interim_span.innerHTML = linebreak(interim_transcript);
       if (final_transcript || interim_transcript) {
         showButtons('inline-block');
       }
     };
   }

   function upgrade() {
     start_button.style.visibility = 'hidden';
     showInfo('info_upgrade');
   }

   var two_line = /\n\n/g;
   var one_line = /\n/g;
   function linebreak(s) {
     return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
   }

   var first_char = /\S/;
   function capitalize(s) {
     return s.replace(first_char, function(m) { return m.toUpperCase(); });
   }

   function createEmail() {
     var n = final_transcript.indexOf('\n');
//      if (n < 0 || n >= 80) {
//        n = 40 + final_transcript.substring(40).indexOf(' ');
//      }
     var subject = encodeURI(final_transcript.substring(0, n));
     var body = encodeURI(final_transcript.substring(n + 1));
     window.location.href = 'mailto:?subject=' + subject + '&body=' + body;
   }

   function copyButton() {
     if (recognizing) {
       recognizing = false;
       recognition.stop();
     }
     copy_button.style.display = 'none';
     copy_info.style.display = 'inline-block';
     showInfo('');
   }

   function emailButton() {
     if (recognizing) {
       create_email = true;
       recognizing = false;
       recognition.stop();
     } else {
       createEmail();
     }
     email_button.style.display = 'none';
     email_info.style.display = 'inline-block';
     showInfo('');
   }

   function startButton(event) {
     if (recognizing) {
       recognition.stop();
       return;
     }
     final_transcript = '';
     recognition.lang = select_dialect.value;
     recognition.start();
     ignore_onend = false;
     final_span.innerHTML = '';
     interim_span.innerHTML = '';
     start_img.src = './resources/img/mic-slash.gif';
     showInfo('info_allow');
     showButtons('none');
     start_timestamp = event.timeStamp;
   }

   function showInfo(s) {
     if (s) {
       for (var child = info.firstChild; child; child = child.nextSibling) {
         if (child.style) {
           child.style.display = child.id == s ? 'inline' : 'none';
         }
       }
       info.style.visibility = 'visible';
     } else {
       info.style.visibility = 'hidden';
     }
   }

   var current_style;
   function showButtons(style) {
     if (style == current_style) {
       return;
     }
     current_style = style;
     copy_button.style.display = style;
     email_button.style.display = style;
     copy_info.style.display = 'none';
     email_info.style.display = 'none';
   }
</script>
</html>