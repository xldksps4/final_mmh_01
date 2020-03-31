$(function(){
	var winH=0, winW=0, currTime=0, setId; 
		videoResizeFn();
		videoAutoplay();

		setId = setInterval(currentTimeFn,10);
		function currentTimeFn(){
			currTime = $('.main-video').get(0).currentTime;  //비디오 현재 진행 타이머 확인
			if(currTime >=37){  //비디오 마지막 끝나는 부분을 체크해서
				setTimeoutFn(currTime); //셋타이머아웃 호출 실행
			}
		}	
		//37초  후에 SHARE VIDEO & WATCH AGAIN  그리고 Explore Stories 버튼이 나타남
		function setTimeoutFn(z){
			setTimeout(shareVideoBtnFn, z);	//37.44
			clearInterval(setId); //setInterval 타이머를 완전 중지			
		}
		
		function videoAutoplay(){
			$('.btn-icon-play').trigger('click');
			videoPlay();
		}		
		
		
		$(window).resize(function(){
			videoResizeFn();
		});
	
	
		function videoResizeFn(){  
			winH=$(window).innerHeight();
			winW=$(window).innerWidth();
			$('.section1-wrap').css({height:winH});
			$('.main-video').css({width:winW,height:'auto'});
			if($('.main-video').innerHeight()<winH){ //창높이보다 비디오높이가 작을때
				$('.main-video').css({width:'auto',height:winH}); //높이기준
				marginL=(winW-$('.main-video').innerWidth())/2; //너비2로나누어
				$('.main-video').css({left:marginL});
			}
			$('.main-video').css({left:0});
		}
		
	//섹션2로 이동하는 스무스 스크롤버튼 이벤트	
	$('.btn-stories,.btn-icon-down').on({
		click:	function(){
			$('html,body').stop().animate({scrollTop:$('#section2').offset().top},600,'easeInOutExpo');
		}
	});	



	//동영상 콘트롤
	function videoPlay(){
		$('.main-video').get(0).play();  			//자동실행 (정지:pause();)
		$('.btn-icon-play').children().attr('class','fas fa-pause');
		//$('.main-video').get(0).muted=false;   		//소리끔 false 소리켬 true;  
		$('.btn-icon-mute').children().attr('class','fas fa-volume-mute');
		$('.main-video').get(0).loop=false;  		//1회만 진행 반복안함.(true:계속반복)
		$('.section1-video-control-wrap').hide(0); 	//기본값은 안보이게 동영상이 종료되면 나타남(show(0))
		$('.btn-stories-wrap').hide(0); 			//기본값은 안보이게 동영상이 종료되면 나타남(show(0))
	}	
	

		
	function shareVideoBtnFn(){ //37초 후에 호출될 콜백함수
		$('.section1-video-control-wrap').show(0);
		$('.btn-stories-wrap').show(0);
		$('.btn-icon-play').children().attr('class','fas fa-play');
	}
	
	//WATCH AGAIN 버튼 클릭 이벤트 비디오 재시작(재실행) 초기화
	$('.btn-watch-again').on({
		click:	function(){
			$('.section1-video-control-wrap').hide(0);
			$('.btn-stories-wrap').hide(0);
			$('.main-video').get(0).play();
			$('.btn-icon-play').children().attr('class','fas fa-pause')
			setTimeoutFn();
		}
	});
	
	$('.section1-modal').hide(0);  //기본값은 안보이게 하기
	//섹션1 모달창 닫기 버튼 이벤트
	$('.btn-modal-close').on({
		click:	function(){
			$('.section1-modal').hide(0);
		}
	});
	
	//섹션1 모달창 열기 버튼 이벤트
	$('.btn-share').on({
		click:	function(){
			$('.section1-modal').show(0);
		}
	});
	
	$('.section1-modal2').hide(0);  //기본값은 안보이게 하기
	
	//섹션1 모달창 닫기 버튼 이벤트
	$('.btn-modal-close').on({
		click:	function(){
			$('.section1-modal2').hide(0);
		}
	});
	
	$('.btn-share2').on({
		click:	function(){
			$('.section1-modal2').show(0);
		}
	});
	
	//Pause 일시정지 버튼 클릭 이벤트 비디오 정지시킨다.
	$('.btn-icon-play').on({
		click:	function(){
			if($('.main-video').get(0).currentTime>=37.44){
				$('.section1-video-control-wrap').hide(0);
				$('.btn-stories-wrap').hide(0);
				$('.main-video').get(0).play();
				$('.btn-icon-play').children().attr('class','fas fa-pause')
				setTimeoutFn();
			}
			else{  //비디오가 중간에 중지 실행 반복 할경우
				if( $('.btn-icon-play').children().attr('class')=='fas fa-pause'){ //실행중인경우
					$('.main-video').get(0).pause();
					$('.btn-icon-play').children().attr('class','fas fa-play');
				}
				else{	//중진된경우 
					$('.main-video').get(0).play();
					$('.btn-icon-play').children().attr('class','fas fa-pause');
				}
			}			
		}
	});
	
	//소리 끄기 켜기 muted=true,(소리켬)   muted=false;(소리끔)
	$('.btn-icon-mute').on({
		click:	function(){		
			if($('.main-video').get(0).muted==false){ //현재 꺼진상태이면
				$('.main-video').get(0).muted=true;   //소리켬으로 바뀌고
				$('.btn-icon-mute').children().attr('class','fas fa-volume-up');
			}
			else if($('.main-video').get(0).muted==true){ //현재 켜진상태이면
				$('.main-video').get(0).muted=false;   //소리끔으로 바뀐다.
				$('.btn-icon-mute').children().attr('class','fas fa-volume-mute');
			}
		}
	});
	
	
	
	
});  //section1.js






