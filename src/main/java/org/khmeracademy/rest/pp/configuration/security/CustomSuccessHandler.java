package org.khmeracademy.rest.pp.configuration.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler{
	
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		
		List<String> roles = new ArrayList<String>();
		
		for(GrantedAuthority authority: authorities){
			System.out.println(authority.getAuthority());
			roles.add(authority.getAuthority());
		}
		
		String redirectURL ="";
		if(roles.contains("ROLE_ADMIN")){
			redirectURL = "/admin/dashboard";
		}else if(roles.contains("ROLE_USER")){
			redirectURL = "/";
		}else{
			redirectURL = "/";
		}
		
		response.sendRedirect(redirectURL);
		
	}

}
