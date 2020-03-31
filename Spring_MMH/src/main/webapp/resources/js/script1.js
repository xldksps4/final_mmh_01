$(function(){
	var visual=$('#brandVisual>ul>li')
	var button=$('#buttonList>li')
	var leftBtn=$('.btnImg .prev')
	var rightBtn=$('.btnImg .next')
	var current=0
	var setInterval01
	timer()
	function timer(){
		setInterval01=setInterval(function(){
			var prev=visual.eq(current)
			var bt0=button.eq(current)
			bt0.removeClass('on')
			move(prev,0,'-100%')
			current++
			if(current==visual.size()){
				current=0
			}
			var next=visual.eq(current)
			var bt1=button.eq(current)
			move(next,'100%',0)
			bt1.addClass('on')
		},2000)
	}
	
	function move(tg,start,end){
		tg.css('left',start).stop().animate({left:end},300)
	}
	
	button.on({click:function(){
		var tg=$(this)
		var i=tg.index()
		button.removeClass()
		tg.addClass('on')
		move1(i)
		
	}
	})
	function move1(i){
		if(current==i){return}
		var currentEl=visual.eq(current)
		var nextEl=visual.eq(i)
		
		currentEl.css('left',0).stop().animate({left:'-100%'},300)
		nextEl.css('left','100%').stop().animate({left:'0'},300)
		current=i
	}
	
	$('#wrap').on({mouseover:function(){
		clearInterval(setInterval01)
	},mouseout(){
		timer()
	}
	})
	
	rightBtn.click(function(){
		var prev=visual.eq(current)
		var bt0=button.eq(current)
			bt0.removeClass('on')
			move(prev,0,'-100%')
			current++
			if(current==visual.size()){
				current=0
			}
			var next=visual.eq(current)
			var bt1=button.eq(current)
			move(next,'100%',0)
			bt1.addClass('on')
	return false
	})
	leftBtn.click(function(){
		var prev=visual.eq(current)
		var bt0=button.eq(current)
			bt0.removeClass('on')
			move(prev,0,'100%')
			current--
			if(current==-visual.size()){
				current=0
			}
			var next=visual.eq(current)
			var bt1=button.eq(current)
			move(next,'-100%',0)
			bt1.addClass('on')
	})
})