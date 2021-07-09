package kr.ac.kopo.kopo04.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;


@Aspect
@Component
public class LogAspect {
	
	@Before("execution(* kr.ac.kopo.kopo04.service.*.*Aop(..))")
	public void onBeforeHandler(JoinPoint joinPoint) {
		System.out.println("================= onBeforeThing");
	}
	
	@After("execution(* kr.ac.kopo.kopo04.service.*.*Aop(..))")
	public void onAfterHandler(JoinPoint joinPoint) {
		System.out.println("================= onAfterHandler");
	}
	
	@AfterReturning(pointcut = "execution(* kr.ac.kopo.kopo04.service.*.*Aop(..))", returning ="str")
	public void onAfterReturningHandler(JoinPoint joinPoint, Object str) {
		System.out.println("@AfterReturning : " + str);
		System.out.println("================= onAfterReturningHandler");
	}
	
	@Pointcut("execution(* kr.ac.kopo.kopo04.service.*.*Aop(..))")
	public void onPointcut(JoinPoint joinPoint) {
		System.out.println("================= onPointcut");
	}
}
