package com.idea.mmh.register.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idea.mmh.register.biz.MemberBiz;
import com.idea.mmh.register.dto.MemberDto;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberBiz biz;
	
	@Autowired
	public JavaMailSender emailSender;

	/**
	 * Simply selects the home view to render by returning its name.
	 */


	@RequestMapping(value = "/register.do")
	public String insertBoard() {

		return "register";
	}

	@RequestMapping(value = "/sign.do", method = RequestMethod.POST)
	public String insert(MemberDto dto) {
		logger.info("select list");

		int res = biz.insert(dto);

		if (res > 0) {
			return "redirect:index.html";
		} else {
			System.out.println("fail to insert");
			return "redirect:register.do";
		}
	}
	@RequestMapping(value = "/jusoPopup.do")
	public String jusoPopup() {
		logger.info("jusoPopup");

		return "jusoPopup";
	}

	/*id 중복체크*/
	//produces는 ajax가 데이터 넘겨받을때 깨짐 방지
	@RequestMapping(value = "/idCheck.do")
	@ResponseBody
	public String idCheck(String m_id) {
		System.out.println(m_id);
		
		MemberDto result = biz.idCheck(m_id);
		String res = "";
		if(result != null) { // 중복
			res = "false";
		} else { // 중복 X
			res = "true";
		}
		
		return res;
	}

	@RequestMapping(value = "/sendMail.do", method = RequestMethod.POST)
	@ResponseBody
	public String sendMail(Model model, String to) {
		System.out.println(to);
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("MMH Email Verify");
		int[] ranV = new int[6];
		String verifyNum = "";
		for (int i = 0; i < ranV.length; i++) {
			ranV[i] = (int) (Math.random() * 9);
			verifyNum += ranV[i] + "";
		}
		message.setText("회원가입을 위한 이메일 인증 메일입니다.\n인증번호 : " + verifyNum);
		emailSender.send(message);
		model.addAttribute(verifyNum, "verifyNum");
		return verifyNum;
	}
}
