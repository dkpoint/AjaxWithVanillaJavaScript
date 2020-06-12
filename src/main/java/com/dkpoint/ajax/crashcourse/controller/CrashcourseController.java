package com.dkpoint.ajax.crashcourse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/crashcourse/*")
public class CrashcourseController {
	// http://localhost:8181/ajax/crashcourse/ajax01_page.do
	@RequestMapping("/ajax01_page.do")
	public String ajax01Page() {
		System.out.println("ajax01_page");
		
		return "crashcourse/ajax01_page";
	}
	
	@RequestMapping("/sample01_test_process.do")
	public String sample01Test() {
		System.out.println("sample01_test");
		
		return "crashcourse/sample01_test";
	}
	// http://localhost:8181/ajax/crashcourse/ajax02_page.do
	@RequestMapping("/ajax02_page.do")
	public String ajax02Page() {
		System.out.println("ajax02_page");
		
		return "crashcourse/ajax02_page";
	}
	
	@RequestMapping("/user_json_process.do")
	public String userJson() {
		System.out.println("user_json_process");
		return "crashcourse/user_json";
	}
	
	@RequestMapping("/users_json_process.do")
	public String usersJson() {
		System.out.println("users_json_process");
		return "crashcourse/users_json";
	}
	// http://localhost:8181/ajax/crashcourse/ajax03_page.do
	@RequestMapping("/ajax03_page.do")
	public String ajax03Page() {
		System.out.println("ajax03_page");
		
		return "crashcourse/ajax03_page";
	}
	
	// http://localhost:8181/ajax/crashcourse/ajax04_page.do
	@RequestMapping("/ajax04_page.do")
	public String ajax04Page() {
		System.out.println("ajax04_page");
		
		return "crashcourse/ajax04_page";
	}
	
	@ResponseBody
	@RequestMapping("/ajax04_page_process.do")
	public String ajax04PageProcess(String name) {
		System.out.println(name);
		return name;
		// return "redirect:./ajax04_page";
		
		// return "true";
	}
	
	
}
