package com.xyz.bd.webmaster.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private CustomAuthenticationProvider customAuthenticationProvider;

    @Autowired
    private LoginHandler loginHandler;

    @Autowired
    private CustomAuthenticationFailureHandler customAuthenticationFailureHandler;

    @Autowired
    void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(customAuthenticationProvider);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .authorizeRequests()
                .antMatchers("/assets/**", "/error/**", "/actuator/**", "/external/**").permitAll()
                .antMatchers("/**").authenticated()
                .and()
                .formLogin()
                .loginPage("/login").permitAll()
                .successHandler(loginHandler)
//                .failureHandler(customAuthenticationFailureHandler)
                .failureForwardUrl("/loginFailed")
                .and()
                .logout()
                .logoutSuccessUrl("/login?logout")
                .and()
                .httpBasic()
                .and()
                .sessionManagement()
                .maximumSessions(1)
                .expiredUrl("/login");

//        http.addFilterBefore(new CentralRequestFilter(), BasicAuthenticationFilter.class);
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers(HttpMethod.GET,
                "/**/*.html",
                "/**/*.css",
                "/**/*.png",
                "/**/*.jpg",
                "/**/*.gif",
                "/**/*.ico",
                "/**/*.woff2",
                "/**/*.woff",
                "/**/*.map",
                "/**/*.ttf",
                "/**/*.js",
                "/logout",
                "/accessDenied",
                "/external/**",
                "/assets/**");
    }
}
