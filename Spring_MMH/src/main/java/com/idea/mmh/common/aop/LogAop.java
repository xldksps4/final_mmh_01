package com.idea.mmh.common.aop;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogAop {
	
	public void before (JoinPoint join) {
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");	// join.getTarger(호출하려는 해당 객체)
		logger.info("----------AOP START----------");
		
		Object[] args = join.getArgs();									// 해당 파라미터 (타겟으로 넘어가는 것들)
		if(args != null) {
			logger.info("method : " + join.getSignature().getName());	// 대상 메서드
			for(int i = 0 ; i <args.length ; i++) {
				logger.info(i+" 번째 : "+args[i]);
			}
		}
	}
	
	public void after(JoinPoint join) {
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");
		logger.info("----------AOP END----------");
		
	}
	
	public void afterThrowing(JoinPoint join) {
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");
		logger.info("----------ERROR LOG----------");
		logger.info(""+join.getArgs());
		logger.info(join.toString());
		logger.info("------------------------------");
		
	}

}
