package Notebook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true, proxyTargetClass = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
    @Autowired
    private UserDetailsService customUserDetailsService;

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(customUserDetailsService).passwordEncoder(new BCryptPasswordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/styles/**","/*.jpeg", "/", "/machines",
                        "/users", "/about", "/login", "/register", "/contact", "/contacts")
                .permitAll()
                .antMatchers("/admin", "/admin/**").hasAuthority("ADMIN")
                .antMatchers("/user", "/user/**").hasAuthority("USER")
                .anyRequest().authenticated()
                .and()
                .formLogin().loginPage("/login").defaultSuccessUrl("/").permitAll()
                .and()
                .logout()
                .logoutSuccessUrl("/").permitAll()
                .and()
                .exceptionHandling();
        /*http
            .authorizeHttpRequests((requests) -> requests
                    .antMatchers(HttpMethod.GET,"/admin/**").hasAnyRole("ADMIN")
                    .antMatchers("/resources/**", "/").permitAll()
                    .antMatchers("/**", "/").permitAll()
            )
            .formLogin((form) -> form
                    .loginPage("/login")
                    .defaultSuccessUrl("/")
                    .permitAll()
            )
            .logout((logout) -> logout
                    .logoutSuccessUrl("/")
                    .permitAll()
            )
            .exceptionHandling()
                .accessDeniedPage("/error/500");*/

    }

    }
