package org.khmeracademy.rest.pp.configuration.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebClientSecurityConfiguration extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Autowired
	private CustomSuccessHandler successHandler;
	
	@Override
	//TODO: FOR USER INFORMATION TO LOGIN TO OUR SYSTEM (Authentication)
	//    1. InMemoryAuthentication
	//    2. JdbcAuthentication
	//    3. UserDetailsService
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		/*auth.inMemoryAuthentication()
			.withUser("admin").password("admin").roles("ADMIN");
		auth.inMemoryAuthentication()
			.withUser("editor").password("editor").roles("EDITOR");*/
		
		//TODO: Using UserDetailsService
		auth.userDetailsService(userDetailsService);
			/*.passwordEncoder(new BCryptPasswordEncoder());*/
	}
	
	@Override
	//TODO: TO PROTECT AND ALLOW (Authorization)
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
			.antMatchers("/admin/**").hasAnyRole("ADMIN")
			.antMatchers("/user/**").hasAnyRole("ADMIN", "USER");
		
		//TODO: DISABLE CROSS SIDE REQUEST FERGERY
		http.csrf().disable();
		
		//TODO: WANT TO USE SPRING SECURITY LOGIN FORM
		http.formLogin()
			.loginPage("/login") 			// CUSTOM THE OWN LOGIN PAGE
			.usernameParameter("email")		// CUSTOM THE 'username'  default ===> email
			.passwordParameter("password")
			.successHandler(successHandler)
			.permitAll();
	}
	
	/*public static void main(String args[]){
		String password = "123456";
		String encodedPassword = new BCryptPasswordEncoder().encode(password);
		System.out.println("ENCODED PASSWORD==> "+  encodedPassword);
		
		
		if(new BCryptPasswordEncoder().matches("123", "$2a$10$tjHxrmNY0zML2dvvoO3eMeJOwnVZPoCV9/ah41g0IskW0mQXGXZAK")){
			System.out.println("SUCCESS");
		}else{
			System.out.println("FAILURE");
		}
			
	}*/
}
