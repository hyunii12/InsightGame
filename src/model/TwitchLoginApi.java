package model;

import com.github.scribejava.core.builder.api.DefaultApi20;

public class TwitchLoginApi extends DefaultApi20{
	
	protected TwitchLoginApi(){
 	}
 
 	private static class InstanceHolder{
 		private static final TwitchLoginApi INSTANCE = new TwitchLoginApi();
 	}
 	
 	
 	public static TwitchLoginApi instance(){
 		return InstanceHolder.INSTANCE;
 	}


	@Override
	public String getAccessTokenEndpoint() {
		// TODO Auto-generated method stub
		return "https://api.twitch.tv/kraken/oauth2/token?grant_type=authorization_code";
	}


	@Override
	protected String getAuthorizationBaseUrl() {
		// TODO Auto-generated method stub
		return "https://api.twitch.tv/kraken/oauth2/authorize";
	}
 	
 	

}