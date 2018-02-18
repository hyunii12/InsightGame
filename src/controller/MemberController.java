package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.avro.data.Json;
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

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import net.minidev.json.JSONObject;
import net.minidev.json.JSONValue;
import net.minidev.json.parser.JSONParser;
import net.minidev.json.parser.ParseException;
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
		System.out.println(session.getAttribute("user_id"));

		
		/* 생성한 인증 URL을 View로 전달 */
		return "member/login";
	}

	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "naverCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, HttpServletRequest request)
			throws IOException {
		
		OAuth2AccessToken oauthToken = naverLoginservice.getAccessToken(session, code, state);
		//String sessionState = (String)session.getAttribute("state");
		//System.out.println(sessionState);
		
		// 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginservice.getUserProfile(oauthToken);
		//System.out.println(apiResult);
		
		
        //JSON to String
		Gson gson = new Gson();
		JsonElement json = gson.fromJson(apiResult, JsonElement.class);
		String naverLoginData = gson.toJson(json);
		JSONObject responseJson = (JSONObject)JSONValue.parse(naverLoginData);
		String response = responseJson.get("response").toString();
		JSONObject naverEmailJson=(JSONObject)JSONValue.parse(response);
		String naverEmail = naverEmailJson.get("email").toString();
		model.addAttribute("naverEmail", naverEmail);
		
		session.setAttribute("user_id", naverEmail);
		
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
			//System.out.println(apiResult);
			
			Gson gson = new Gson();
			JsonElement json = gson.fromJson(apiResult, JsonElement.class);
			String twitchLoginData = gson.toJson(json);
			JSONObject responseJson = (JSONObject)JSONValue.parse(twitchLoginData);
			String twitchName = responseJson.get("name").toString();
			String twitchEmail = responseJson.get("email").toString();
			model.addAttribute("twitchEmail", twitchEmail);

			session.setAttribute("user_id", twitchEmail);
			System.out.println(twitchName);

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
		//model.addAttribute("apiResult", person);
		String googleEmail = person.getDisplayName();
		
		model.addAttribute("googleEmail", googleEmail);
		
		session.setAttribute("user_id", googleEmail);


		//System.out.println(person.getDisplayName());

		return "member/googleSuccess";
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {

		session.invalidate();

		return "redirect:main.do";
	}
	
}
