$(function(){
	//$('.btn-main').eq(2).addClass('navDeco');
	//메인버튼 이벤트(마우스 오버시) Anchor Button Docoration Underline 효과
	//mouseenter, mouseleave, 
	//focusin, focusout
	//$('.btn-main').on({}); 0 1 2 3 4 5
	
	$('.btn-main').each(function(index){
		$(this).on({
			mouseenter:	function(){
				//if(index!=2){
					$(this).addClass('navDeco');
				//}
			},
			focusin:	function(){  //키보드접근시
				//if(index!=2){
					$(this).addClass('navDeco');
				//}
			},
			mouseleave:	function(){
				//if(index!=2){
					$(this).removeClass('navDeco');
				//}
			},			
			focusout:	function(){
				//if(index!=2){
					$(this).removeClass('navDeco');
				//}
			}			
		});
	});
		
		
		
	//Mobile
	$('.appBarBtn').click(function(){
		$('#mobile-wrap').stop().animate({left:0},800,'easeInOutExpo');
		$('.mobile-bottom').stop().animate({left:(100*1)+'%'},800,'easeInOutExpo');
	});
	$('.closeBtn').click(function(){
		$('#mobile-wrap').stop().animate({left:(100*-1)+'%'},800,'easeInOutExpo');
		$('.mobile-bottom').stop().animate({left:(100*0)+'%'},800,'easeInOutExpo');		
	});
		
		
	//모바일의 창높이 설정 
	mobileWindowHeightFn();
	
	$(window).resize(function(){
		mobileWindowHeightFn();
	});
	
	function mobileWindowHeightFn(){
		$('#mobile-wrap>li').css({height:$(window).innerHeight()});		
	}
	
		
		
		
		
		
		
		
		
		
	
});   //header.js