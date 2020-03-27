/*
 * 서머노트는 html 자체에 입력되는 div 안에 있는 녀석입니다.
 * 그래서
 * 둥실둥실 떠있는 녀석이 textarea에 있는 것처럼 보인답니다.
 * 근데,
 * 사실은 html 자체에 적혀있는거라서  
 * <p>태그를 삭제하거나 자르는게 아니고 글을 불러올 환경 자체를 html로 만들어줘야합니다.
 *  
 */


//드래그앤 드롭 
function dragEnter(evnt) {
	evnt.preventDefault();	//기본적인 submit활동을 취소합니다. //submit 후 하고싶은 것을 적어주세요
   }

/*
   function drag(evnt) {
      console.dir(evnt.target);
      evnt.target.id = 'drag';
      evnt.dataTransfer.setData("text", evnt.target.id);
   }
   */
   
   //드래그 했을때
   function drag(evnt) {
      console.dir(evnt.target);			//dir는 객체 로깅 시 사용합니다.
      evnt.target.id = 'drag';
      
      const classArr = evnt.target.parentNode.className.split(' ');
      
      //ondrag시 원하는 클래스에 복사붙여넣기를 할 수 있게 만드는 코드 , true값을 "copyCheck"에 담아서 전송해줌
      if(classArr[1]){
    	  evnt.dataTransfer.setData("copyCheck", true);   
      }		//※ 비동기로 값을 보낼거면 DataTransferItem.getAsString()인듯...?
      evnt.dataTransfer.setData("text", evnt.target.id);

   }
//target : 태그 오브젝트 에대애서 반영한다. id의 프로퍼티를 정의해주고 (가상의id를 만들어줌)
//dataTransfer : "text" 라는 오브젝트에 넣어서 drop 할때의 값에 적용해 준다    
   
   
   //복사 드래그앤 드롭
   function copydrop(evnt) {
	   evnt.preventDefault();
      var data = evnt.dataTransfer.getData("text");
      var dragObj = document.querySelector('#' + data);
      
      // 복사된 것을 자식 객체에 붙이기 
      const copyCheck = evnt.dataTransfer.getData("copyCheck");
      
      console.log(copyCheck);
      
      if(copyCheck){
         var ccopy = dragObj.cloneNode(true);
         
         evnt.target.appendChild(ccopy);   
         
         
      } else {
    	  evnt.target.appendChild(dragObj);
      }
      
      
      dragObj.id = '';
   }
//dragObj.id = ''; 가상의 아이디를 삭제 ->매번 중복된 값을 새로 id를 만들어 주어야 하기때문
      
   
   //일반 드래그앤 드롭
   function nomaldrop(evnt) {
	   evnt.preventDefault();
      var data = evnt.dataTransfer.getData("text");
      var dragObj = document.querySelector('#' + data);
      evnt.target.appendChild(dragObj);
      dragObj.id = '';
   }
   
   
   
//글 선택시 생성되는 박스 
function selectbtn(selectno){
   console.log("로그부분에서 찍혀오는 값"+selectno);


//controller   
   $.ajax({
      url: 'user_meetinglogdetail2.do',
      //accept : 'application/json',
      method: 'post',
      contentType : 'application/json; charset=utf-8;', //보내는타입
      //async: false,
     // 보내는 데이터 
      dataType: "json",	//받는 타입
      success: function(res){ //컨트롤러 return값이 넘어옴
         console.log(res);
         //alert(res);
//         var id = res.mid;
//         var title = res.wbtitle;
//         var date = res.wbstartdate +"~"+ res.wbenddate;
         var content = res.ncontent; 
         console.log(id+" " +date+" " +content);
//         $(".wtxt").eq(0).val(id);
//         $(".wtxt").eq(1).val(title);
         $(".wtxt").eq(2).val(date);
         $(".ncontent").html(ncontent);
      },
      error: function(res){
         alert("다시 선택해주세요!");
         
      }
   });
 
   /*
    * div큰거 하나 만들고 그 안에 p태그
    * */
   
   //( 부모태그, 태그이름, 
   
   const div1 = addObject(null, 'div', 'writeContent');
   
   //<p><span></p>
   //innerHTML html에 바로 넣어주는 함수
   const wpic = addObject(div1, 'p', 'wpic', true, (o)=>{
      o.innerHTML = `<span>담당자</span><input class="wtxt" type="text" placeholder="담당자" readonly/>`;
   });
   const wtitle = addObject(div1, 'p', 'wtitle', true, (o)=>{
      o.innerHTML = `<span>제목</span><input class="wtxt" type="text" placeholder="제목" readonly/>`;
   });
   const wdate = addObject(div1, 'p', 'wdate', true, (o)=>{
      o.innerHTML = `<span>날짜</span><input class="wtxt" type="text" placeholder="날짜" readonly/>`;
   });
   const wcontent = addObject(div1, 'div', 'wcontent', true, (o)=>{
      o.innerHTML = "내용 ";
   });
      //2번째,배경 투명 = false, 검정 = true/ true 4번째 취소버튼 없애기 
   const box = boxFun('일정', true, [ div1 ],false,'innerBox',null,true);
   
   
   const winsertbtn = addObject(div1,'p','winsertbtn',true,(o)=>{
      o.innerHTML = `
      <input type="button" value="삭제" id="wbdelete">
      <input type="button" value="수정" id="wbupdate" >
      `;
      
      document.querySelector('#wbdelete').addEventListener('click', (e)=>{

         $.ajax({
            url: 'wDelete',
            //accept : 'application/json',
            method: 'post',
            //contentType : 'application/json; charset=utf-8;',
            //async: false,
            data: {"selectno":selectno},
            success: function(res){
               
               console.log(res);
               if(true){
                  alert("삭제되었습니다.");   
                  location.href="wboard";
               }else if(false){
                  alert("삭제 실패 ");
               }
               
            
            },
            error: function(res){
               alert("실패");
               
            }
         });
      
      });
      document.querySelector('#wbupdate').addEventListener('click', (e)=>{

         //<p> 없애고 
         //임시보관할 장소를 가지고 와서 담아 두고 
         //<input> 테그를 새로 만들어서 넣어주기
         //서머노트 json으로 받아온거 뿌려주기 <textarea>넣어도됨 
         
         $('.wtxt').eq(0).attr("readonly", false);
         $('.wtxt').eq(1).attr("readonly", false);
         $('.wtxt').eq(2).attr("readonly", false);
             
         //$('#wbupdate').val('수정완료');
           if($('#wbupdate').val() == '수정'){
              $('#wbupdate').val('수정완료');
           }else{
              $('#wbupdate').val('수정');
              $('.wtxt').eq(0).attr("readonly", true);
             $('.wtxt').eq(1).attr("readonly", true);
             $('.wtxt').eq(2).attr("readonly", true);
                    
           }
         
         
         
         
         /*
          

      $.ajax({
      url: 'wSelectOne',
      //accept : 'application/json',
      method: 'post',
      //contentType : 'application/json; charset=utf-8;',
      //async: false,
      data: {"selectno":selectno},
      success: function(res){
         console.log(res);
         //alert(res);
         var id = res.mid;
         var title = res.wbtitle;
         var date = res.wbstartdate +"~"+ res.wbenddate;
         var content = res.wbcontent; 
         console.log(id+" " +title+" " +date+" " +content);
         $(".wtxt").eq(0).val(id);
         $(".wtxt").eq(1).val(title);
         $(".wtxt").eq(2).val(date);
         $(".wcontent").html(content);
      },
      error: function(res){
         alert("다시 선택해주세요!");
         
      }
   });
   
   const div1 = addObject(null, 'div', 'writeContent');
   
   const wpic = addObject(div1, 'p', 'wpic', true, (o)=>{
      o.innerHTML = `<span>담당자</span><input class="wtxt" type="text" placeholder="담당자"/>`;
   });
   const wtitle = addObject(div1, 'p', 'wtitle', true, (o)=>{
      o.innerHTML = `<span>제목</span><input class="wtxt" type="text" placeholder="제목"/>`;
   });
   const wdate = addObject(div1, 'p', 'wdate', true, (o)=>{
      o.innerHTML = `<span>날짜</span><input class="wtxt" type="text" placeholder="날짜"/>`;
   });
   const wcontent = addObject(div1, 'div', 'wcontent', true, (o)=>{
      o.innerHTML = "내용 ";
   });*/
         
         
      });
   });
 
   

}




//글 새로 쓰기 버튼 
function insertbtn() {
   
   //const box = boxFun('일정 추가',true,[]);
   
}







