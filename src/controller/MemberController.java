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
	
	
//	@RequestMapping("main.do")
//	public String main(Model model) {
//		return "main";
//	}
//	
//	@RequestMapping("loginForm.do")
//	public String loginForm(Model model) {
//		return "member/login";
//	}
//	
//	@RequestMapping("login.do")
//	public String login(HttpSession session, String mEmail, String mPassword) {
//		
//		return "redirect:main.do";
////		return "redirect:loginForm.do";
//	}
//	
//	
//	@RequestMapping("logout.do")
//	public String logout(HttpSession session) {
//		
//		session.removeAttribute("mEmail");
//		session.removeAttribute("mPassword");
//		return "redirect:main.do";
//		
//	}
//	
//	@RequestMapping("joinForm.do")
//	public String joinForm() {
//		
//		return "member/join";
//		
//	}
//	
//	
//	@RequestMapping("join.do")
//	public String join(HttpSession session, String mEmail, String mPassword) {
//		
//		return "redirect:login.do";
//	}
//	
//	

	@RequestMapping("loginForm.do")
	public String loginForm(Model model) {
		System.out.println("여기는 로그인폼 페이지");
		return "member/login";
	}
	
	@RequestMapping("login.do")
	public String login(HttpSession session, String mEmail, String mPassword) {
		System.out.println("로그인하면 메인으로 리다이렉트");
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
		
		System.out.println("회원가입폼 페이지");
		return "member/join";
		
	}
	
	
	@RequestMapping("join.do")
	public String join(HttpSession session, String mEmail, String mPassword) {
		
		System.out.println("회원가입버튼 누르면 로그인 페이지로");
		return "redirect:loginForm.do";
	}
	
	
}
