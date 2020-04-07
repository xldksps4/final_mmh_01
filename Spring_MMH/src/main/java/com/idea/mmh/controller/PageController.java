package com.idea.mmh.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.expr.Instanceof;
import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.idea.mmh.model.biz.NoteBiz;
import com.idea.mmh.model.dto.NoteDto;
import com.idea.mmh.register.biz.MemberBiz;
import com.idea.mmh.register.dto.MemberDto;

import sun.security.jca.GetInstance.Instance;
/*서머노트 등 글작성 관련 기능 및 페이지 컨트롤러*/
@Controller
public class PageController {

	private Logger logger = LoggerFactory.getLogger(PageController.class);

	@Autowired
	private NoteBiz noteBiz;
	@Autowired
	private MemberBiz memberBiz;
	
//서머노트list
	@RequestMapping(value = "/user_list.do")
	public String userList(Model model) {
		logger.info("user_list.jsp로");
		
		model.addAttribute("selectlist", noteBiz.selectList());
		return "user_list";
	}
	
	
	@RequestMapping(value="/user_meetinglogdetail.do")
	public ModelAndView userMeetinglogdetail(HttpServletRequest request, ModelAndView mv, int nno) {
		logger.info("mv를 사용해서 user_meetinglogdetail.jsp로");
		
		mv.addObject("select", noteBiz.selectOne(nno));
		mv.setViewName("./user_meetinglogdetail");
		
		return mv;
	}
	
//서머노트 insertform으로
	@RequestMapping(value = "/user_write.do")
	public String boardWrite(Locale locale, Model model, HttpSession session) {
		MemberDto dto = (MemberDto) session.getAttribute("login");
		logger.info("user_write 페이지로");
//		System.out.println("login은요 : "+ dto);
//		int res = dto.getM_no();
		String mId = dto.getM_id();
//		System.out.println("mId는요 : "+ mId);
		
//		System.out.println("getM_no는요 : "+ res);
		
		Date date = new Date();
		SimpleDateFormat format1;		
		format1 = new SimpleDateFormat("yyyy-MM-dd");
		
		
		
		model.addAttribute("today", format1.format(date));
		model.addAttribute("user", mId); // m_id == nwriter <-- jsp에서 ${user.getM_id} 예정
		return "user_write";
	}
	
//서머노트 insertres(save)	
	@RequestMapping(value ="/save.do", method = {RequestMethod.POST, RequestMethod.GET})	// button태그에서 보낸 onclick함수 경로
	public String save(RedirectAttributes redirect, NoteDto dto) {
		logger.info("서머노트 insert dto 값은?  : "+dto);
		
		if(dto.getNtitle() instanceof String) {
			logger.info("ntitle은 String입니다.");		//당첨
		} else {
			logger.info("ntitle은 String이 아닙니다.");
		}

		int resNno = noteBiz.insert(dto);	// 0or1이 아니라 nno번호로 나올거에요
		
		//처리해주고 화면전환
		if(resNno > 0) {
			return "redirect: user_meetinglogdetail.do?nno="+resNno;	//controller로 다시 ...
		}else {
	    	   logger.info("ㅠ ㅠ 서머노트 insert Controller에서 안넘어감");
			return "redirect:user_list.do";
		}
		//테이블
		//model.addAttribute("dto", noteBiz.insert(dto));
	}
	
	
	
	//----------------------- 아래는 5조 참고 ---------------//
	
	
	
	
	
	
////서머노트 글보기	
//	
//	@RequestMapping(value = "/savee.do", method = RequestMethod.POST)
//    @ResponseBody
//    public Map<String, Object> save(Model model, NoteDto dto, int opno) { //wbtodono가 내 opno같은 존재인듯
//		logger.info("값 들어왔는지 확인요" + opno);
//       noteBiz.selectOne(opno);
//       //글 상세보기 
//       //wwdto.getWbtodono()
//	   int res = noteBiz.insert(dto);
//	   
//       logger.info("디티오 찍어보기, nno는 "+dto.getNno()+", opno는 "+dto.getOpno());
//       
//       Map<String, Object> map = new HashMap<String, Object>();
//       map.put("opno",dto.getOpno());
//       map.put("nno",dto.getNno());
//       map.put("ncontent",dto.getNcontent());
//       map.put("nwidth",dto.getNwidth());
//       map.put("nheight",dto.getNheight());
//       map.put("ntop",dto.getNtop());
//       map.put("nleft",dto.getNleft());
//       map.put("nz",dto.getNz());
//
//        
//
//       return map;
//    
//    }
    
//서머노트 삭제    
    @RequestMapping(value="/nodelete.do", method= RequestMethod.POST)
    @ResponseBody
    public boolean wDelete(@ModelAttribute("selectno") int nno) {
       
       int res = noteBiz.delete(nno);
       
       if(res > 0) {
          return true;
       }else {

          return false;
       }
       
    }
 
    
//POST의 HTTP(S) request를 처리하는  PostMapping 
    @PostMapping("/summerwrite.do")
    public String insert(NoteDto dto) {
       
       int   res = noteBiz.insert(dto);
       if(res > 0) {
          System.out.println("저장완료");
          return "redirect:user_meetinglogdetail.do";	//바로 화면전환
          
       }else {
          System.out.println("저장안됨");
          return "user_meetinglogwrite";
       }
       
    
    }

//	@RequestMapping(value="/user_meetinglogwrite.do", method = RequestMethod.POST)	//<<-- 405에러 , 여기는 받는 방식입니다.
	@RequestMapping(value="/user_meetinglogwrite.do", method = {RequestMethod.POST, RequestMethod.GET })
	public String MeetingWrite(Model model) {
		
		logger.info("여기는 meeting페이지로 넘어가는 컨트롤러입니다.");
		
		return "user_meetinglogwrite";
	}
	
	@RequestMapping(value="/feedback.do")
	public String feedBack() {
		return "user_feedback";
	}
	
	@RequestMapping(value="/feedback_res.do")
	public String feedbackRes() {
		
//		mv.addObject("feedmv", mv);  //뭘들고 다닐지 보류
//		mv.setViewName("user_list");
		
		return "user_feedback_res";
	}
    
}
