package com.idea.mmh.controller;

import java.util.Locale;
import java.util.Map;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.idea.mmh.model.biz.ProjectMainBiz;
import com.idea.mmh.model.dto.PayDto;
import com.idea.mmh.register.biz.MemberBiz;

/**
 * Handles requests for the application home page.
 */
@Controller
public class PayController {
	
	@Autowired
	private MemberBiz biz;
	
	private String payParam;
	private PayDto payDto;
	public PayDto getPayDto() {
		return payDto;
	}
	public void setPayDto(PayDto payDto) {
		this.payDto = payDto;
	}
	
	@Autowired
	private ProjectMainBiz projectmainbiz;

	@RequestMapping(value = "/user_pay_main.do", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		return "user_pay_main";
	}
	
	/**
	 * kakaoPay
	 */
	@RequestMapping(value = "/kakaoPay.do")
	public ModelAndView kakaoPay(ModelAndView mav, @RequestParam Map<String, Object> paramMap) {
		payParam = (String)paramMap.get("pay_param");
		String m_id = (String)paramMap.get("m_id");
		
		RestTemplate restTemplate = new RestTemplate();
		
		//세션 로그인 정보 확인용
		 System.out.println("kakapay.do =  "+ m_id);
        
		 // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "39339e5ddc29e06b36c1753cbd5c401a");
        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("partner_order_id", "1001");
        params.add("partner_user_id", "user");
        params.add("item_name", "MMH");
        params.add("quantity", "1");
        params.add("total_amount", "7900");
        params.add("tax_free_amount", "100");
        params.add("approval_url", "http://localhost:8787/mmh/kakaoPaySuccess.do?m_id="+m_id);
        params.add("cancel_url", "http://localhost:8787/mmh/kakaoPayCancel.do");
        params.add("fail_url", "http://localhost:8787/mmh/kakaoPaySuccessFail.do");
 
         HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
 
        try {
        	payDto = restTemplate.postForObject(new URI("https://kapi.kakao.com/v1/payment/ready"), body, PayDto.class);
            
            mav.addObject("next_redirect_pc_url", payDto.getNext_redirect_pc_url());
            mav.setViewName("jsonView");
            return mav;
 
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
		mav.setViewName("user_pay_main");
		return mav;
	}
	
	/**
	 * kakaoPaySuccess
	 * @throws IOException 
	 */
	@RequestMapping(value = "/kakaoPaySuccess.do")
	public ModelAndView kakaoPaySuccess(ModelAndView mav, @RequestParam("pg_token") String pg_token, HttpServletRequest request, HttpServletResponse response, String m_id) throws IOException {
		System.out.println(m_id);
		int res =  biz.updatePay(m_id);
		if(res > 0) {
			mav.setViewName("user_pay_success"); //회의록 작성페이지로 바꿔주기
			mav.addObject("info", kakaoPayInfo(pg_token));
			return mav;
			
			//결제 업데이트 싪패 시
		}else {
			String result = "<script>alert('결제가 취소되었습니다.\\n이전페이지로 돌아갑니다.'); window.location.href = '/mmh/user_pay_main.do';</script>";
			   
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println(result);
			out.flush();
			return null;
		}
		
		
	}
	/**
	 * kakaoPayCancel
	 * @throws Exception 
	 */
	@RequestMapping(value = "/kakaoPayCancel.do")
	public void kakaoPayCancel(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//취소내용
		String result = "<script>alert('결제가 취소되었습니다.\\n이전페이지로 돌아갑니다.'); window.location.href = '/mmh/user_pay_main.do';</script>";
   
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(result);
		out.flush();
	}
	/**
	 * kakaoPaySuccessFail
	 */
	@RequestMapping(value = "/kakaoPaySuccessFail.do")
	public void kakaoPaySuccessFail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//취소내용
		String result = "<script>alert('결제가 실패했습니다.\\n이전페이지로 돌아갑니다.'); window.location.href = '/mmh/user_pay_main.do';</script>";
   
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(result);
		out.flush();
	}
	
	public PayDto kakaoPayInfo(String pg_token) {
		 
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "39339e5ddc29e06b36c1753cbd5c401a");
        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
 
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("tid", payDto.getTid());
        params.add("partner_order_id", "1001");
        params.add("partner_user_id", "user");//연동해야함
        params.add("pg_token", pg_token);
        params.add("total_amount", "7900");//연동해야함
        
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        
        try {
        	payDto = restTemplate.postForObject(new URI("https://kapi.kakao.com/v1/payment/approve"), body, PayDto.class);
        	
            return payDto;
        
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return null;
    }
	
}
