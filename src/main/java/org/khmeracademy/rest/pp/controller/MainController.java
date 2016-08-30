package org.khmeracademy.rest.pp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller

public class MainController {
	@RequestMapping(value="/home")
	public String home(){
		return "user/layout/home_view";
	}
		@RequestMapping(value="/about")
		public String about(){
			return "user/layout/about_view";
		}
		
		@RequestMapping(value="/login")
		public String user_login(){
			return "user/layout/user_login_view";
		}
		
		@RequestMapping(value="/signup")
		public String user_signup(){
			return "user/layout/user_signup_view";
		}
		@RequestMapping(value="/contact_owner")
		public String contactowner(){
			return "user/layout/contact_view";
		}
	
		@RequestMapping(value="/logout", method = RequestMethod.GET)
		public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		    if (auth != null){    
		        new SecurityContextLogoutHandler().logout(request, response, auth);
		    }
		    return "redirect:/user/layout/home_view";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
		}
		
}
