$(function(){
	var t=0,leftH,rightH;	


	function textHeightFn(){
		
		leftH = $('.section2-box-wrap>li').eq(0).innerHeight();
		rightH= $('.section2-box-wrap>li').eq(1).innerHeight();
		if(leftH>rightH){
				$('.section2-box-wrap>li').eq(1).css({height:leftH});		
		}else{
			$('.section2-box-wrap>li').eq(0).css({height:rightH});	
		}}


	//textHeightFn();
	
	$(window).resize(function(){
		textHeightFn();
	});	
		
		
	//video Gallery Event
	$('.video-gallery>li').on({
		mouseenter:	function(){
			$(this).find('p').addClass('addBg');
			$(this).find('h3').addClass('addAni1');		
			$(this).find('.aniPtxt').addClass('addAni1');		
			$(this).find('span').addClass('addAni1');
			$(this).find('video').addClass('addZoom');
			$(this).find('img').addClass('addZoom');
			$(this).find('video').get(0).pause();	
			//비디오일시정는 마지막줄에 반드시
		},
		mouseleave:	function(){
			$(this).find('.videoCap').removeClass('addBg');
			$(this).find('h3').removeClass('addAni1');	
			$(this).find('.aniPtxt').removeClass('addAni1');
			$(this).find('span').removeClass('addAni1');
			$(this).find('video').removeClass('addZoom');		
			$(this).find('img').removeClass('addZoom');
			$(this).find('video').get(0).play();			
		}
	});	
		
		
	//loadMoreBtn 버튼 이벤트  갤러리2보이기
	$('.loadMoreBtn').on({
		click:	function(){
			$('.gallery2').fadeIn(600);
		}
	});	
	
	
	
	///////////////////////////////////////////////////////////////
	
	footFn();  //sitemap 각칸의 너비를 계산 5칸으로 나누어 우측여백 설정
	function footFn(){
		var liWidth=[],hap=0,marginW=0;
		
		for(i=0; i<=5; i++){
			liWidth[i] = $('.footer-sitemap>li').eq(i).innerWidth();
			hap += liWidth[i];
		}
		marginW = (1090 - hap)/5;
		$('.footer-sitemap>li').css({marginRight:marginW-2});
		$('.footer-sitemap>li').eq(5).css({marginRight:0});
	}
	//window BOM
	//반응형 Javascript & jQuery
	//$(window).innerWidth()>1090

	//너비가 1090초과하면 사이트맵 버튼 클릭 안되게(off()) 해야함.
	//메뉴가 펼쳐져(slideDown) 있어야함.
	
	//$(window).innerWidth()<=1090
	//너비가 1090이하이면 사이트맵 버튼 토클버튼(on()) 이벤트
	//메뉴가 접혀져(slideUp) 있어야함.

	footSitmap();  //최초 한번수행
	
	$(window).resize(function(){
		footSitmap();  //창(window)의 너비를 즉각 반영
	});
	

		function footSitmap(){	
			
			if($(window).innerWidth()>1090){ 
				//너비가 1090초과하면 사이트맵 버튼 클릭 안되게(off())해야함.	
				$('.footer-sitemap span').off();
				//메뉴가 펼쳐져(slideDown) 있어야함.
				$('.footSub').stop().slideDown(0);
				t=0;
			}
			else{ //1090이하이면
				if(t==0){ //화면크기 조절시 그사이즈에서 한번만 수행
					//메뉴가 접혀져(slideUp) 있어야함.
					$('.footSub').stop().slideUp(0);
					//너비가 1090이하이면 사이트맵 버튼 토클버튼(on()) 이벤트
					$('.footer-sitemap span').on({
						click:	function(){
							$('.footSub').stop().slideUp(300);	//초기화		
							$(this).next().stop().slideToggle(300); //현재 클릭한거만 열고 닫고
						}
					});
					t=1;  //사용되었다 변수=1
				}
			}
			
			
		}  //footSitmap() 블럭 끝
	
	
	
	
}); 