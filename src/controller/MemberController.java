package controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

import service.GoogleLoginService;
import service.NaverLoginService;
import service.TwitchLoginService;

@Controller
public class MemberController {

	private NaverLoginService naverLoginservice;
	private TwitchLoginService twitchLoginservice;
	private GoogleLoginService googleLoginservice;
	private String apiResult = null;
	private OAuth2AccessToken oauthToken;
	
	/* NaverLoginBO */
	@Autowired
	private void setNaverLoginService(NaverLoginService naverLoginservice) {
		this.naverLoginservice = naverLoginservice;
	}
	
	@Autowired
	private void setTwitchLoginService(TwitchLoginService twitchLoginservice) {
		this.twitchLoginservice = twitchLoginservice;
	}
	
	@Autowired
	private void setGoogleLoginService(GoogleLoginService googleLoginservice) {
		this.googleLoginservice = googleLoginservice;
	}
	
	
	// 로그인 첫 화면 요청 메소드
	@RequestMapping(value = "loginForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverlogin(Model model, HttpSession session) {

		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginservice.getAuthorizationUrl(session);
		String twitchAuthUrl = twitchLoginservice.getAuthorizationUrl(session);
		String googleAuthUrl = googleLoginservice.getAuthorizationUrl(session);

		
		System.out.println("네이버:" + naverAuthUrl);
		System.out.println("트위치:" + twitchAuthUrl);
		System.out.println("구글:" + googleAuthUrl);
		
		
		// 네이버
		model.addAttribute("naverurl", naverAuthUrl);
		model.addAttribute("twitchurl", twitchAuthUrl);
		model.addAttribute("googleurl", googleAuthUrl);		
		
		/* 생성한 인증 URL을 View로 전달 */
		return "member/login";
	}
	

	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "naverCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("여기는 naverCallback");
		oauthToken = naverLoginservice.getAccessToken(session, code, state);

		// 로그인 사용자 정보를 읽어온다.
		// apiResult = naverLoginservice.getUserProfile(oauthToken);
		model.addAttribute("result", apiResult);

		/* 네이버 로그인 성공 페이지 View 호출 */
		return "naverSuccess";
	}


	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "twitchCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String twitchCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("여기는 twitchCallback");
		oauthToken = twitchLoginservice.getAccessToken(session, code, state);

		// 로그인 사용자 정보를 읽어온다.
		// apiResult = naverLoginservice.getUserProfile(oauthToken);
		model.addAttribute("result", apiResult);

		/* 네이버 로그인 성공 페이지 View 호출 */
		return "twitchSuccess";
	}
	
	@RequestMapping(value = "googleCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String googleCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("여기는 googleCallback");
		oauthToken = googleLoginservice.getAccessToken(session, code, state);

		// 로그인 사용자 정보를 읽어온다.
		// apiResult = naverLoginservice.getUserProfile(oauthToken);
		model.addAttribute("result", apiResult);

		/* 네이버 로그인 성공 페이지 View 호출 */
		return "googleSuccess";
	}
	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session){
		
		session.removeAttribute("naverurl");
		session.removeAttribute("twitchurl");
		session.removeAttribute("googleurl");

		return "redirect:main.do";
	}



}
