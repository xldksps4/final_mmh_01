package com.idea.mmh.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView userList(HttpSession session, ModelAndView mv) {
		logger.info("user_list.jsp로 갈 때 mno들고가세요");
		// id 기준으로 pay를 y로 바꿨어
		// 세션 유지하면서...
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		String mId = memberDto.getM_id();
		
		List<NoteDto> list = noteBiz.selectList(memberDto.getM_no());
		
		NoteDto dto = new NoteDto();

		mv.addObject("user", mId);
		mv.addObject("dto", dto);
		mv.addObject("selectlist", list);
		mv.setViewName("user_list");

		return mv;
	}

	// 서머노트 insertform으로
	@RequestMapping(value = "/user_write.do")
	public String boardWrite(Locale locale, Model model, HttpSession session) {
		MemberDto dto = (MemberDto) session.getAttribute("login");
		logger.info("user_write 페이지로");
		String mId = dto.getM_id();

		Date date = new Date();
		SimpleDateFormat format1;
		format1 = new SimpleDateFormat("yyyy-MM-dd");

		model.addAttribute("today", format1.format(date));
		model.addAttribute("user", mId); // m_id == nwriter <-- jsp에서 ${user.getM_id} 예정
		
		return "user_write";
	}

	// 서머노트 insertres(save)
	@RequestMapping(value = "/save.do", method = { RequestMethod.POST, RequestMethod.GET }) // button태그에서 보낸 onclick함수
																							// 경로
	public String save(RedirectAttributes redirect, NoteDto dto) {
		logger.info("서머노트 insert dto 값은?  : " + dto);

		if (dto.getNtitle() instanceof String) {
			logger.info("ntitle은 String입니다."); // 당첨
		} else {
			logger.info("ntitle은 String이 아닙니다.");
		}

		int resNno = noteBiz.insert(dto); // 0or1이 아니라 nno번호로 나올거에요

		// 처리해주고 화면전환
		if (resNno > 0) {
			return "redirect: user_detail.do?nno=" + resNno + "&nwriter=" + dto.getNwriter(); // controller로 다시 ...
		} else {
			logger.info("ㅠ ㅠ 서머노트 insert Controller에서 안넘어감");
			return "redirect:user_list.do";
		}
		// 테이블
		// model.addAttribute("dto", noteBiz.insert(dto));
	}

	// HttpServletRequest request
	@RequestMapping(value = "/user_detail.do")
	public ModelAndView userMeetinglogdetail(HttpSession session, ModelAndView mv, NoteDto dto) {
		logger.info("mv를 사용해서 user_detail.jsp로");
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		System.out.println(memberDto);
		int mNo = memberDto.getM_no();
		
		mv.addObject("dto", noteBiz.selectOne(dto));
		System.out.println("selectOne dto는요" + noteBiz.selectOne(dto));
//		mv.addObject("user", mNo);
//		System.out.println("user는요 :"+ mNo );
		mv.setViewName("user_detail");

		return mv;
	}

	// ----------------------- 아래는 5조 참고 ---------------//


//서머노트 삭제    
	@RequestMapping(value = "/ndelete.do", method = RequestMethod.GET) //<<-- 405에러 , 여기는 받는 방식입니다.
	public String nDelete(int nno) {


		int res = noteBiz.delete(nno);
		System.out.println("delete 컨트롤러는 : "+ res);
		if (res > 0) {
			return "redirect:user_list.do";
		} else {
			logger.info("Note관련 delete controller 실패입니다 .ㅠ_ㅠ");
			return "redirect:user_write.do";
		}

	}

}
