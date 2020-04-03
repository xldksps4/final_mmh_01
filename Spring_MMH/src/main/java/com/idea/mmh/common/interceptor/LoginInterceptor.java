package com.idea.mmh.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.idea.mmh.register.dto.MemberDto;

public class LoginInterceptor implements HandlerInterceptor {

	private Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.info("[interceptor] : afterCompletion");
		// TODO Auto-generated method stub
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("[interceptor] : postHandle");
		// TODO Auto-generated method stub
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		logger.info("[requestMethod] : " + request.getMethod());
		logger.info("[requestURI] : " + request.getRequestURI());

		HttpSession session = request.getSession();
		MemberDto login = (MemberDto) session.getAttribute("login"); // 세션 user 넣어주고

		// 로그인
		if (
				request.getRequestURI().endsWith("/loginform.do") ||
				request.getRequestURI().endsWith("/loginajax.do") ||
				request.getRequestURI().endsWith("/index.do") ||
				request.getRequestURI().endsWith("/notice.do") ||
				
				request.getRequestURI().contains("/idsearch.do") ||
				request.getRequestURI().contains("/nickcheck.do") ||
				request.getRequestURI().contains("/idcheck.do") ||
				request.getRequestURI().contains("/pwmodify.do") ||
				request.getRequestURI().contains("/signup.do") ||
				request.getRequestURI().contains("/mabout.do") ||
				request.getRequestURI().contains("/emailAuthCheck.do") ||
				request.getRequestURI().contains("/smscheck.do") ||
				request.getRequestURI().contains("/kakaologin.do") ||
				request.getRequestURI().contains("/kakaologout.do") ||
				request.getRequestURI().contains("/kakaoout.do") ||
				request.getRequestURI().contains("/kakaosignup.do") ||
				request.getRequestURI().contains("/test.do") ||
				request.getRequestURI().contains("/map.do") ||
				request.getRequestURI().contains("/footer.do") ||
				request.getRequestURI().contains("/header.do") ||
				request.getRequestURI().contains("/wboard.do") ||
				request.getRequestURI().contains("/summerwrite.do") ||
				request.getRequestURI().endsWith("/wSelectOne.do") ||
				request.getRequestURI().contains("/wDelete.do") 
				
			) {
				return true; 
			}else if(
				request.getSession().getAttribute("login")!=null
			) {
				return true;
			}
		
		// 확장자
		if (
				request.getRequestURI().endsWith(".js") ||
				request.getRequestURI().endsWith(".css") ||
				request.getRequestURI().endsWith(".jpg") ||
				request.getRequestURI().endsWith(".jpeg") ||
				request.getRequestURI().endsWith(".png") ||
				request.getRequestURI().endsWith(".gif") ||
				request.getRequestURI().endsWith(".gif") ||
				request.getRequestURI().endsWith(".eot") ||
				request.getRequestURI().endsWith(".ttf") ||
				request.getRequestURI().endsWith(".woff") ||
				request.getRequestURI().endsWith(".map") 
			) {
			return true;
			} else {
				logger.info("인터셉터에서 허용 불가합니다.");
			return false;
			}
	}

}
