package com.idea.mmh.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idea.mmh.model.biz.MindBiz;
import com.idea.mmh.model.biz.NoteBiz;
import com.idea.mmh.model.biz.PoitBiz;
import com.idea.mmh.model.dto.NoteDto;
//유재욱 기능 용도(서머노트, 포스트잇)
@Controller
public class PageController {

	private Logger logger = LoggerFactory.getLogger(PageController.class);

	@Autowired
	private MindBiz mindbiz;
	@Autowired
	private NoteBiz notebiz;
	@Autowired
	private PoitBiz poitbiz;
	
	@RequestMapping(value ="/save.do", method = {RequestMethod.POST, RequestMethod.GET})	// button태그에서 보낸 onclick함수 경로
	public String save(Model model,NoteDto dto) {
	//나중에 서머노트에 들어가는 list를 뽑아내야하나?
		//select로 가져온 값을 insert로 전달.
		
		
		// 포스트잇
		logger.info(dto+"----------------------d t o------------------------------");
		int res = notebiz.insert(dto);
//		int res2 = poitbiz.insert(dto); 이런느낌
//		int res3 = ;					이런느낌
		
//		//맵
//		Map<String, Object> map = new HashMap<String, Object>();
//	       map.put("opno",dto.getOpno());
//	       map.put("nno",dto.getNno());
//	       map.put("ncontent",dto.getNcontent());
//	       map.put("nwidth",dto.getNwidth());
//	       map.put("nheight",dto.getNheight());
//	       map.put("ntop",dto.getNtop());
//	       map.put("nleft",dto.getNleft());
//	       map.put("nz",dto.getNz());
		
		if(res > 0) {
			model.addAttribute("dto", notebiz.insert(dto)); //addattribute ?? ${변수명}
			return "redirect:user_meetinglogdetail.do";
		}else {
			return "boardwrite";
		}
		//테이블
		//model.addAttribute("dto", notebiz.insert(dto));
		
		
	}
	
	@RequestMapping(value = "/user_meetinglogdetail.do")
	public String user_meetinglogdetail() {
		//샘플 뭐넣지
		return "user_meetinglogdetail";
	}
	
	
	
	
	
	//----------------------- 아래는 5조 참고 ---------------//
	
	
	
	
	
	
//서머노트 글보기	
	
	@RequestMapping(value = "/user_meetinglogdetail2.do", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> selectOne(int opno) { //wbtodono가 내 opno같은 존재인듯
		logger.info("값 들어왔는지 확인요" + opno);
       
       //글 상세보기 
       //wwdto.getWbtodono()
       
		NoteDto dto = notebiz.selectOne(opno);
       logger.info("디티오 찍어보기, nno는 "+dto.getNno()+", opno는 "+dto.getOpno());
       
       Map<String, Object> map = new HashMap<String, Object>();
       map.put("opno",dto.getOpno());
       map.put("nno",dto.getNno());
       map.put("ncontent",dto.getNcontent());
       map.put("nwidth",dto.getNwidth());
       map.put("nheight",dto.getNheight());
       map.put("ntop",dto.getNtop());
       map.put("nleft",dto.getNleft());
       map.put("nz",dto.getNz());

        

       return map;
    
    }
    
//서머노트 삭제    
    @RequestMapping(value="/noDelete.do", method= RequestMethod.POST)
    @ResponseBody
    public boolean wDelete(@ModelAttribute("selectno") int opno) {
       
       int res = notebiz.delete(opno);
       
       if(res > 0) {
          return true;
       }else {
          return false;
       }
       
    }
    
    
//RequestMapping을 보다 명시적으로 사용하는 @.   
//GET의 HTTP(S) request를 처리하는 GetMapping    
    @GetMapping("/summerwrite.do")
    public String boardWrite() {
    	//Q : 이게 글작성 컨트롤러? 리스트-> 글작성폼 가는 컨트롤러?
      return "summerboardwrite";
    }
    
//POST의 HTTP(S) request를 처리하는  PostMapping 
    @PostMapping("/summerwrite.do")
    public String insert(NoteDto dto) {
       
       int   res = notebiz.insert(dto);
       if(res > 0) {
          System.out.println("저장완료");
          return "redirect:user_meetinglogdetail.do";	//바로 화면전환
          
       }else {
          System.out.println("저장안됨");
          return "user_meetinglogwrite";
       }
       
    
    }

	
}
