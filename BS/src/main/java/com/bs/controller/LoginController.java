package com.bs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bs.service.MemberService;
import com.bs.vo.LoginInfo;

@Controller
public class LoginController {
	// 로깅을 위한 변수
    private Logger logger = LoggerFactory.getLogger(LoginController.class);
    
    @Inject
    MemberService memberService;
    
    @RequestMapping(value="/member/login.do")
    public String login() {
    	return "/member/login";
    }
     
    @RequestMapping("/member/loginChk.do")
	public ModelAndView	loginChk(@ModelAttribute LoginInfo info, HttpSession session) {
    	boolean result = memberService.loginChk(info, session);
    	ModelAndView mav = new ModelAndView();
    	if(result == true) {
    		mav.setViewName("home");
    		mav.addObject("msg","success");
    		mav.addObject("session", session);
    		System.out.println("===========================");
    		System.out.println("성공 session:"+ session);
    		System.out.println("성공 inf:"+ info);
    		System.out.println("===========================");
    	}else {
    		mav.setViewName("member/login");
    		mav.addObject("msg","fail");
    		System.out.println("===========================");
    		System.out.println("fail:"+ mav);
    		System.out.println("===========================");
    	
    	}
    	
    	return mav;
    }
    
    @RequestMapping(value="/member/logout.do")
    public ModelAndView logout(HttpSession session) {
    	memberService.logout(session);
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("member/login");
    	mav.addObject("msg","logout");
    	
    	return mav;
    }

	
}
