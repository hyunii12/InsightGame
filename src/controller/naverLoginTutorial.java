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

import service.NaverLoginService;

@Controller
public class naverLoginTutorial {
	
	/* NaverLoginBO */
	private NaverLoginService naverLoginservice;
	private String apiResult = null;



	/* NaverLoginBO */
	@Autowired
	private void setNaverLoginService(NaverLoginService naverLoginservice){
		this.naverLoginservice = naverLoginservice;
	}
	
    
	//로그인 첫 화면 요청 메소드
		@RequestMapping(value = "loginForm.do", method = { RequestMethod.GET, RequestMethod.POST })
		public String naverlogin(Model model, HttpSession session) {
			
			/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
			String naverAuthUrl = naverLoginservice.getAuthorizationUrl(session);
			
			
			System.out.println("네이버:" + naverAuthUrl);
			
			//네이버 
			model.addAttribute("url", naverAuthUrl);

			/* 생성한 인증 URL을 View로 전달 */
			return "member/login";
		}

		//네이버 로그인 성공시 callback호출 메소드
		@RequestMapping(value = "callback.do", method = { RequestMethod.GET, RequestMethod.POST })
		public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
				throws IOException {
			System.out.println("여기는 callback");
			OAuth2AccessToken oauthToken;
	        oauthToken = naverLoginservice.getAccessToken(session, code, state);
	        //로그인 사용자 정보를 읽어온다.
//		    apiResult = naverLoginservice.getUserProfile(oauthToken);
			model.addAttribute("result", apiResult);

	        /* 네이버 로그인 성공 페이지 View 호출 */
			return "naverSuccess";
		}



}
