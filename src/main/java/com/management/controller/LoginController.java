package com.management.controller;

import java.security.Principal;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping(value="/user", method=RequestMethod.GET)
	@ResponseBody
	public Principal user(Principal user) {
		if(user == null) {
			System.out.println("user is null");
		} else {
			System.out.println(user.getName());
		}
		return user;
	}
	
//	@RequestMapping(value="/user", method=RequestMethod.GET)
//	@ResponseBody
//	public String user() {
//		String userName = null;
//		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		if(principal instanceof UserDetails) {
//			userName = ((UserDetails)principal).getUsername();
//			System.out.println("1 " + userName);
//		} else {
//			userName = principal.toString();
//			System.out.println("2 " + userName);
//		}
//		return userName;
//	}
	
	@RequestMapping(value={"/", "/home"}, method=RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		
		return "home";
	}
	
//	@RequestMapping(value="/login", method=RequestMethod.GET, produces={"application/json"})
	@RequestMapping(value="/login")
	public ModelAndView login(@RequestParam(value="error", required=false) String error,
			@RequestParam(value="logout", required=false) String logout) {
		
		ModelAndView model = new ModelAndView();
		if(error != null) {
			model.addObject("error", "Invalid username and password!");
		}
		
		if(logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value="/loginfailed", method=RequestMethod.GET)
	public String loginError(ModelMap model) {
		return "login";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(ModelMap model) {
		return "login";
	}
	
	@RequestMapping(value="/*", method=RequestMethod.GET)
	public String home(ModelMap model) {
		return "home";
	}
	
	@RequestMapping(value = { "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView welcomePage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is welcome page!");
		model.setViewName("hello");
		return model;

	}
}
