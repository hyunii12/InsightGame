package service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.oauth.OAuth20Service;

import model.TwitchLoginApi;

public class TwitchLoginService {
	
	private final static String CLIENT_ID = "4jsekeumop20mr3dgphok2axptw6j5";
	private final static String CLIENT_SECRET = "xvme9rkwsqzj3e1j5u0lk0c254seca";
	private final static String REDIRECT_URI = "http://localhost:8080/InsightGame/twitchCallback.do";
	private final static String SCOPE = "user_read";
	
	/* 세션 유효성 검증을 위한 난수 생성기 */
	private String generateRandomString() {
		return UUID.randomUUID().toString();
	}
	
	/* http session에 데이터 저장 */
	private void setSession(HttpSession session,String state){
		session.setAttribute("state", state);
	}

	/* http session에서 데이터 가져오기 */	
	private String getSession(HttpSession session){
		return (String) session.getAttribute("state");
	}
	
	/* 네아로 인증  URL 생성  Method */
	public String getAuthorizationUrl(HttpSession session) {
		
		String state = generateRandomString();
		setSession(session,state);
		
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.scope("user_read")
				.state(state)
				.build(TwitchLoginApi.instance());
		return oauthService.getAuthorizationUrl();
	}
	
	/* 네아로 Callback 처리 및  AccessToken 획득 Method */
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{
		
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.scope("user_read")
				.state(state)
				.build(TwitchLoginApi.instance());
		
		OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
		return accessToken;
	}
	
//	public String getUserProfile(OAuth2AccessToken oauthToken, String scope) {
//		
//		String url = "https://api.twitch.tv/kraken/user?"+;
//		Response response = url.
//		
//		return null;
//	}
	
	public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException{
		
		String url ="https://api.twitch.tv/kraken/user";
		
		//String USER_AGENT = "Mozila/5.0";
	        
	        //http client 생성
	        CloseableHttpClient httpClient = HttpClients.createDefault();
	        
	        //get 메서드와 URL 설정
	        HttpGet httpGet = new HttpGet(url);
	        
	        //agent 정보 설정
	        //httpGet.addHeader("User-Agent", USER_AGENT);
	        httpGet.addHeader("Content-type", "application/json");
	        httpGet.addHeader("Client-ID","4jsekeumop20mr3dgphok2axptw6j5");
	        httpGet.addHeader("Authorization", "OAuth "+oauthToken.getAccessToken());
	        
	        //get 요청
	        CloseableHttpResponse httpResponse = httpClient.execute(httpGet);
	        
	        //System.out.println("GET Response Status");
	        //System.out.println(httpResponse.getStatusLine().getStatusCode());
	        String json = EntityUtils.toString(httpResponse.getEntity(), "UTF-8");
	        
	        //System.out.println(json);
	        
	        httpClient.close();
		
		return json;

	}
	
}