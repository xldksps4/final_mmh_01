package com.idea.mmh.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idea.mmh.model.biz.BoardBiz;
import com.idea.mmh.model.biz.NoteBiz;
import com.idea.mmh.model.dto.BoardDto;
import com.idea.mmh.model.dto.NoteDto;
import com.idea.mmh.register.biz.MemberBiz;
import com.idea.mmh.register.dto.MemberDto;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/* 주석영역은 준용형님이 작성한 HomeController */

	@Autowired
	private BoardBiz biz;
	@Autowired
	private MemberBiz mbiz;
	
	@Autowired
	private NoteBiz noteBiz;
	
	
	// 얘가 뭔지 불확실하지만 아마,
	// 로그인 세션 유지중에 등급에 따른 메인페이지로...?
	@RequestMapping("/grade_main.do") // admin.do -> grade_main.do
	public String list(Model model, HttpSession session) {
		logger.info("얘가 뭘까요");

		model.addAttribute("list", biz.selectList());
		MemberDto res = (MemberDto) session.getAttribute("login");

		if (res.getM_grade().equals("A")) {
			return "admin_info"; // viewadmin -> admin_info
		} else if (res.getM_grade().equals("U")) {
			return "user_info"; // viewuser -> user_info
		} else {
			return "redirect: /"; // 시작페이지로 이동하나요
		}
	}

	// 관리자 메인페이지로
	// loginajax.do / logout.do : 해당 페이지로 돌아옴
	// - user.do / admin.do로 이동	(정보페이지로 추측)
	// 회사소개, 프로젝트예시는 경로 없음.
	// notice.do : 공지사항으로
	@RequestMapping("/admin_main.do") // index.do -> admin_main.do
	public String index(Model model, HttpSession session) {
		logger.info("select list");
		//System.out.println("controll"+model);
		//model.addAttribute("list", biz.selectList());
		
		List<NoteDto> list = noteBiz.selectList();
		
		model.addAttribute("list", list);
		for(NoteDto dto : list) {
			System.out.println(dto.getNtitle());
		}
		
		return "admin_main";
	}

	// 유저정보 페이지로
	// userwrite.do로 이동 가능
	@RequestMapping("/user_info.do") // user.do -> user_info.do
	public String user(Model model, MemberDto dto, HttpSession session) {
		MemberDto res = (MemberDto) session.getAttribute("login");

		MemberDto rs = mbiz.selectMember(res.getM_id());

		model.addAttribute("dto", rs);

		return "user_info";
	}
	
	// 유저 정보 수정 페이지로
	@RequestMapping("/user_info_write.do")
	public String userwrite() {
		logger.info("user_info_write페이지로 갑니다.");

		return "user_info_write"; //viewuserwrite -> user_info_write
	}

	
	// 공지사항페이지로
	@RequestMapping("/notice.do") // 수정 보류
	public String notice(Model model) {
		logger.info("select list");

		model.addAttribute("list", biz.selectList());

		return "admin_notice"; // viewnotice -> admin_notice
	}

	//공지사항 작성페이지로
	@RequestMapping("/insertform.do") //수정 보류
	public String insertForm() {
		logger.info("insert form");

		return "admin_notice_write"; //viewnoticewrite -> admin_notice_write
	}

	//공지사항 작성 성공시/실패시
	@RequestMapping("/insertres.do")
	public String insertRes(BoardDto dto) {
		logger.info("insert result");

		int res = biz.insert(dto);
		if (res > 0) {
			return "redirect: admin_main.do";
		} else {
			return "redirect: insertform.do";
		}

	}

	//얘도 뭔지 모름 글보기는 글보긴데..공지보기?
	@RequestMapping(value = "/select.do", method = RequestMethod.GET)
	public String detail(Model model, int myno) {
		logger.info("select one");

		BoardDto dto = biz.selectOne(myno);
		model.addAttribute("dto", dto);

		return "admin_notice_detail";
	}

	//공지사항 수정페이지로(?)
	@RequestMapping(value = "/updateform.do", method = RequestMethod.GET)
	public String updateForm(Model model, int myno) {
		logger.info("update form");

		BoardDto dto = biz.selectOne(myno);
		model.addAttribute("dto", dto);

		return "mvcupdate";
	}
	
	//공지사항 수정 성공 시 / 실패 시
	@RequestMapping(value = "/updateres.do", method = RequestMethod.POST)
	public String updateRes(Model model, BoardDto dto) {
		logger.info("update result");

		int res = biz.update(dto);

		if (res > 0) {
			return "redirect:detail.do?myno=" + dto.getMyno(); // 이전 공지사항으로
		} else {
			return "redirect:updateform.do?myno=" + dto.getMyno();
		}
	}

	//공지사항 삭제
	@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
	public String delete(Model model, int myno) {
		logger.info("delete");

		int res = biz.delete(myno);

		if (res > 0) {
			return "redirect:admin.do";
		} else {
			return "redirect:detail.do?myno=" + myno;
		}
	}

	@RequestMapping("/test.do")
	public String test() {
		logger.info("transactional");

		biz.test();

		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/voice_speech.do")
	public String voice() {

		return "voice_speech";
	}
}
