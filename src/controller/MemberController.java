package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.IMemberService;

@Controller
public class MemberController {
	
	
	@Autowired
	private IMemberService memberService;
	
	
	@RequestMapping("loginForm.do")
	public String loginForm(Model model) {
		return "member/login";
	}
	
	@RequestMapping("login.do")
	public String login(HttpSession session, String mEmail, String mPassword) {
		
		return "redirect:main.do";
//		return "redirect:loginForm.do";
	}
	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		
		session.removeAttribute("mEmail");
		session.removeAttribute("mPassword");
		return "redirect:main.do";
		
	}
	
	@RequestMapping("joinForm.do")
	public String joinForm() {
		
		return "member/join";
		
	}
	
	
	@RequestMapping("join.do")
	public String join(HttpSession session, String mEmail, String mPassword) {
		
		return "redirect:login.do";
	}
	
	

}
