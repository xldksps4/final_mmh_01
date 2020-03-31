package com.idea.mmh.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

/*주석영역은 준용형님이 작성한 HomeController*/	
	
//	@Autowired
//	private BoardBiz biz;
//	@Autowired
//	private MemberBiz mbiz;
//	
//	@RequestMapping("/admin.do")
//	public String list(Model model,HttpSession session) {
//		logger.info("select list");
//		
//		model.addAttribute("list", biz.selectList());
//		MemberDto res=(MemberDto)session.getAttribute("login");
//		
//		if(res.getM_grade().equals("A")) {
//			return "viewadmin";
//		}else if(res.getM_grade().equals("U")){		
//			return "viewuser";
//		}else {
//			return "home";
//		}
//	}
//	
//	@RequestMapping("/user.do")
//	public String user(Model model, MemberDto dto, HttpSession session) {
//		MemberDto res=(MemberDto)session.getAttribute("login");
//
//		MemberDto rs=mbiz.selectMember(res.getM_id());
//		
//		model.addAttribute("dto",rs);
//		
//		
//		return "viewuser";
//	}
//	
//	@RequestMapping("/notice.do")
//	public String notice(Model model) {
//		logger.info("select list");
//		
//		model.addAttribute("list", biz.selectList());
//		
//		return "viewnotice";
//	}
//	
//	
//	@RequestMapping("/index.do")
//	public String index(Model model, HttpSession session) {
//		logger.info("select list");
//		
//		model.addAttribute("list", biz.selectList());
//		
//		return "index";
//	}
//	
//	@RequestMapping("/insertform.do")
//	public String insertForm() {
//		logger.info("insert form");
//		
//		return "viewnoticewrite";
//	}
//		
//	
//	
//	@RequestMapping("/insertres.do")
//	public String insertRes(BoardDto dto) {
//		logger.info("insert result");
//		
//		int res = biz.insert(dto);
//		if(res > 0) {
//			return "redirect:admin.do";
//		} else {
//			return "redirect:insertform.do";
//		}
//		
//	}
//
//	@RequestMapping(value = "/select.do", method = RequestMethod.GET)
//	public String detail(Model model, int myno) {
//		logger.info("select one");
//		
//		BoardDto dto = biz.selectOne(myno);
//		model.addAttribute("dto", dto);
//		
//		return "viewdetail";
//	}
//	
//	@RequestMapping(value = "/updateform.do", method = RequestMethod.GET)
//	public String updateForm(Model model, int myno) {
//		logger.info("update form");
//		
//		BoardDto dto = biz.selectOne(myno);
//		model.addAttribute("dto", dto);
//		
//		return "mvcupdate";
//	}
//	
//
//	
//	@RequestMapping(value = "/updateres.do", method = RequestMethod.POST)
//	public String updateRes(Model model, BoardDto dto) {
//		logger.info("update result");
//		
//		int res = biz.update(dto);
//		
//		if(res > 0) {
//			return "redirect:detail.do?myno="+dto.getMyno();
//		} else {
//			return "redirect:updateform.do?myno="+dto.getMyno();
//		}
//	}
//
//	@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
//	public String delete(Model model, int myno) {
//		logger.info("delete");
//		
//		int res = biz.delete(myno);
//		
//		if(res > 0) {
//			return "redirect:admin.do";
//		} else {
//			return "redirect:detail.do?myno="+myno;
//		}
//	}
//	
//	@RequestMapping("/test.do")
//	public String test() {
//		logger.info("transactional");
//		
//		biz.test();
//		
//		return "redirect:list.do";
//	}
//	
//	
	
	
	
	
	
	
	
	
	
	
	@ExceptionHandler(NullPointerException.class)
	@RequestMapping(value = "/main.do")
	public String home(Locale locale, Model model) {		//메인페이지(준용형님것으로 대체필요)
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "main";
	}
	
	@RequestMapping(value = "/logins.do", method=RequestMethod.POST)
	public void login() {			//로그인(수왕씨것으로 대체필요)
		logger.info("logins page");
		
	}
	
	@RequestMapping(value = "/signUp.do")
	public void signUp() {		//회원가입(철규것으로대체필요)
		logger.info("signUp page");
		
	}
//	@RequestMapping(value="/user_meetinglogwrite.do", method = RequestMethod.POST)	//<<-- 405에러 , 여기는 받는 방식입니다.
	@RequestMapping(value="/user_meetinglogwrite.do", method = {RequestMethod.POST, RequestMethod.GET })
	public String MeetingWrite(Model model) {
		
		logger.info("여기는 meeting페이지로 넘어가는 컨트롤러입니다.");
		
		return "user_meetinglogwrite";
	}
	
	@GetMapping("/write.do")
	public String boardWrite() {
		return "boardwrite";
	}
	
	@GetMapping("/writejh.do")
	public String boardWriteJh() {
		return "boardwritejh";
	}
	
}
