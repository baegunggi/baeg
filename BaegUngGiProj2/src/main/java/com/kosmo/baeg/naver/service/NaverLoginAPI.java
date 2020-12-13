package com.kosmo.baeg.naver.service;

import com.github.scribejava.core.builder.api.DefaultApi20;

public class NaverLoginAPI extends DefaultApi20 {

	
	
	
	private static class InstanceHolder{
        private static final NaverLoginAPI INSTANCE = new NaverLoginAPI();
    }
	
    public static NaverLoginAPI instance(){
        return InstanceHolder.INSTANCE;
    }
	
	@Override
	public String getAccessTokenEndpoint() {
		
		
		return "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";
	}//////////////////getAccessTokenEndpoint

	@Override
	protected String getAuthorizationBaseUrl() {
		
		return  "https://nid.naver.com/oauth2.0/authorize";
	}////////////////getAuthorizationBaseUrl

	
	
	
}/////////////class
