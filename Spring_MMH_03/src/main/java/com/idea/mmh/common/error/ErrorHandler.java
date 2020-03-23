//package com.idea.mmh.common.error;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.servlet.ModelAndView;
//
///* 스프링에서 예외처리하는 경우와 방법
// ◆ 메서드 내에서 예외 상황을 예측해서 처리하는 try-catch문을 이용하는 방법
// ◆ 요구사항에 의한 예외 처리 (ex. validation > 특정 값이 0~255범위가 아니면 유효하지 않은 값으로 판단하고 예외 처리)
// ◆ 스프링 시큐리티에서 인터셉터로 잡아서 UnauthorizedException 같은 예외 처리
// >>> 위와같은 경우, 유지보수에 어려움이 발생할 수 있음. 
// 	개발자가 유지보수 시 비즈니스로직에 보다 집중할 수 있게, 아래와같이 예외처리부분을 별도 관리하자.
// 		
// 	출처 : https://jeong-pro.tistory.com/195
//*/
//
//@ControllerAdvice   // 해당 클래스는 Exception을 처리하는 컨트롤러라는 어노테이션 
//public class ErrorHandler {
//   private static final Logger logger = LoggerFactory.getLogger(ErrorHandler.class);
//   
//   @ExceptionHandler(Exception.class)       // 파라미터로 받는 예외를 받아서 처리하는 메서드
//   public ModelAndView commonException(Exception e) {
//      logger.info(e.toString());
//      ModelAndView modelAndView = new ModelAndView();
//      modelAndView.addObject("exception", e);
//      modelAndView.setViewName("/error/ExceptionPageAll");
//      
//      
//      // 해당 컨트롤러를 발전 시켜 각각 에러에 맞는 페이지를 띄우게 해야한다.
//      
//      return modelAndView;
//   }
//   
////   @GetMapping("/service")
////   public String serviceCall() {
////	   return notebiz.메소드
////   }
//   
//}