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
