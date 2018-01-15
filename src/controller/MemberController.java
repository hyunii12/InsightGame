package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.IMemberService;

@Controller
public class MemberController {
	
	
	@Autowired
	private IMemberService memberService;
	
	
	@RequestMapping("login.do")
	public String login(HttpSession session, String mEmail, String mPassword) {
		
		return "redirect:main.do";
	}
	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		
		return "redirect:main.do";
		
	}
	
	@RequestMapping("joinForm.do")
	public String joinForm() {
		
		return "joinForm";
		
	}
	
	
	@RequestMapping("join.do")
	public String join(HttpSession session, String mEmail, String mPassword) {
		
		return "redirect:loginForm.do";
	}
	
	

}
