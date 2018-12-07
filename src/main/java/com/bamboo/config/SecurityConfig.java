package com.bamboo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

@Configuration
@EnableWebSecurity
@Log4j
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
		protected void configure(HttpSecurity http) throws Exception {
			// TODO Auto-generated method stub
			http.authorizeRequests()
				.antMatchers("/").permitAll()
				.antMatchers("/freetalk").access("hasRole('ROLE_STUDENT')");
			
			http.formLogin().loginPage("/gallery").loginProcessingUrl("/login");
		}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		log.info("configure........");
		auth.inMemoryAuthentication().withUser("student").password("{noop}student")
		.roles("STUDENT");
	}
	
	@Bean
	public AuthenticationSuccessHandler loginSuccessHandler() {
		return new CustomLoginSuccessHand
	}
}
