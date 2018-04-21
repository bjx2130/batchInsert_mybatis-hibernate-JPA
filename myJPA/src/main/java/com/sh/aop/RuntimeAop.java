package com.sh.aop;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;


/**
 * 必须在 application-Context.xml 中声明 <aop:aspectj-autoproxy/>
 * @author HP
 *
 */
@Component
@Aspect
public class RuntimeAop {
	
	private static final Logger log = LogManager.getLogger();
	
	
	
	@Around("execution(* com.sh.dao.*.*(..))")
	public Object around(ProceedingJoinPoint pjp) throws Throwable {
		String methodName = pjp.getSignature().getName();
		
		log.info("------------ 开始执行方法 [ {} ]--------",methodName);
		long s = System.currentTimeMillis();
		Object retVal = pjp.proceed();
		long e = System.currentTimeMillis();
		log.info("------------ 结束执行方法 [ {} ] 耗时：{} 毫秒   ------------- " ,
				methodName,(e-s));
		
		return retVal;
	}
}
