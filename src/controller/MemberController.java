package controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.Connection;
import org.springframework.social.google.api.Google;
import org.springframework.social.google.api.impl.GoogleTemplate;
import org.springframework.social.google.api.plus.Person;
import org.springframework.social.google.api.plus.PlusOperations;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.builder.api.DefaultApi20;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthConfig;

import service.NaverLoginService;
import service.TwitchLoginService;

@Controller
public class MemberController{

	private NaverLoginService naverLoginservice;
	private String apiResult = null;
	private OAuth2AccessToken oauthToken;
	private TwitchLoginService twitchLoginservice;

	/* NaverLoginService */
	@Autowired
	private void setNaverLoginService(NaverLoginService naverLoginservice) {
		this.naverLoginservice = naverLoginservice;
	}
	
	@Autowired
	private void setTwitchLoginService(TwitchLoginService twitchLoginservice) {
		this.twitchLoginservice = twitchLoginservice;
	}

	// 구글 로긴
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;

	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;

	// 로그인 첫 화면 요청 메소드
	@RequestMapping(value = "loginForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverlogin(Model model, HttpSession session) {

		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginservice.getAuthorizationUrl(session);
		model.addAttribute("naverurl", naverAuthUrl);
		
		// 트위치
		String twitchAuthUrl = twitchLoginservice.getAuthorizationUrl(session);
		model.addAttribute("twitchurl", twitchAuthUrl);
		
		//구글
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		String googleAuthUrl = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
		
		model.addAttribute("googleurl", googleAuthUrl);

		/* 생성한 인증 URL을 View로 전달 */
		return "member/login";
	}

	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "naverCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {

		OAuth2AccessToken oauthToken = naverLoginservice.getAccessToken(session, code, state);
		//String sessionState = (String)session.getAttribute("state");
		//System.out.println(sessionState);

		// 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginservice.getUserProfile(oauthToken);
		model.addAttribute("apiResult", apiResult);
		//System.out.println(apiResult);

		/* 네이버 로그인 성공 페이지 View 호출 */
		return "member/naverSuccess";
	}

	// 트위치 로그인 성공시 callback호출 메소드
		@RequestMapping(value = "twitchCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
		public String twitchCallback(Model model,@RequestParam String scope, @RequestParam String code, @RequestParam String state, HttpSession session)
				throws IOException {

			oauthToken = twitchLoginservice.getAccessToken(session, code, state);
			//System.out.println(scope);
			//System.out.println(oauthToken);
			
			//System.out.println(oauthToken.getAccessToken());
			apiResult = twitchLoginservice.getUserProfile(oauthToken);
			System.out.println(apiResult);


		/* 네이버 로그인 성공 페이지 View 호출 */
		return "member/twitchSuccess";
	}

	@RequestMapping(value = "googleCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String googleCallback(Model model, @RequestParam String code, HttpSession session)
			throws IOException {
		
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations(); 
		AccessGrant accessGrant = oauthOperations.exchangeForAccess(code, googleOAuth2Parameters.getRedirectUri(), null); 
		
		String accessToken = accessGrant.getAccessToken(); 
		Long expireTime = accessGrant.getExpireTime(); 
		
		if (expireTime != null && expireTime < System.currentTimeMillis()) {
			accessToken = accessGrant.getRefreshToken();
			System.out.printf("accessToken is expired. refresh token = {}", accessToken);
		}

		Connection<Google>connection = googleConnectionFactory.createConnection(accessGrant); 
		Google google = connection == null ? new GoogleTemplate(accessToken) : connection.getApi(); 
		
		PlusOperations plusOperations = google.plusOperations();
		Person person = plusOperations.getGoogleProfile();
		model.addAttribute("apiResult", person);

		System.out.println(person.getDisplayName());

		return "member/googleSuccess";
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {

		session.invalidate();

		return "redirect:main.do";
	}
	


}
