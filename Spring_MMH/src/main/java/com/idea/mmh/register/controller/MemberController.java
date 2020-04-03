package com.idea.mmh.register.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
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

	// 회원가입 form으로 이동!
	@RequestMapping(value = "/register.do")
	public String insertBoard() {

		return "register";
	}
	
	// 회원가입 (insert)submit하면, index화면으로 전환
	// insert가 안되면, 회원가입form화면으로 전환
	@RequestMapping(value = "/sign.do", method = RequestMethod.POST)
	public String insert(MemberDto dto) {
		logger.info("insert ");

		int res = biz.insert(dto);

		if (res > 0) {
			return "redirect:index.html";
		} else {
			System.out.println("fail to insert");
			return "redirect:register.do";
		}
	}
	
	// 도로명주소를 쓸 때, input text를 누르면 도로명주소API 화면으로 전환
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
	
	// email인증시 이메일을 보내는 맵핑
	// 보내는 이메일 쪽에서 인증번호를 받는 이메일 주소로 보내는 맵핑
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
	
	
	
	
	
	
	
/*아래는 준용형님의 com.mvc.upgrade.MemberController 내용*/
 
	@RequestMapping("/loginform.do")
	public String loginForm() {
		logger.info("login form");
		
		return "mvclogin";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "redirect:admin_main.do";
	}
	
	
	
	@RequestMapping(value = "/loginajax.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> loginAjax(HttpSession session,@RequestBody MemberDto dto){
		logger.info("login ajax");
		
		/*
		 * @RequestBody : request 객체를 통해 넘어오는 데이터를 java 객체에 binding
		 * @ResponseBody : java 객체를 response 객체에 binding
		 */
		
		System.out.println("\nLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLogin\n");
		
		MemberDto res = biz.login(dto);
		System.out.println(res.getM_id()+"컨트롤러다");
		boolean check = false;
		boolean admin = true;
		if(res != null) {
			session.setAttribute("login", res);
			check = true;
			if(res.getM_grade().equals("A")) {
				admin=true;
			}
		}
		System.out.println("------------------------------------------------------"+res);
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("check",check);
		map.put("admin",admin);

		return map;
	}
	
	@RequestMapping(value = "/update_member.do", method = RequestMethod.POST)
	public String updatemember(MemberDto dto,HttpSession user) {
		logger.info("여기에서 마지막 작동");
		
		int res = biz.updateMember(dto);
		if(res > 0) {
			MemberDto rs=biz.selectMember(dto.getM_id());
			user.setAttribute("dto",rs);
			return "redirect:user_info.do";
		} else {
			return "redirect:user_info_write.do";
		}
	}
	

 
 
 
 
 
 
 
 
 
 
 
 
 
	
	
	
	
	
	
	
	
	
	
}
