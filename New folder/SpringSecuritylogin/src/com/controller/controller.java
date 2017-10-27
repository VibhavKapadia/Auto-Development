package com.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.DAO;
import com.VO.LoginVo;

import com.VO.RegistrationVO;

@Controller
public class controller {
	
	@Autowired
	DAO dao;
	
	
	/*@RequestMapping(value="/welcome", method=RequestMethod.GET)
	public String welcomeuser(Model model){
		return ("hello");
		
	}
*/

	@RequestMapping(value="/login" , method=RequestMethod.GET)
	public ModelAndView login(){
		
		String s="enter your username and password";
		return new ModelAndView("Login","msg",s);
	}
	
	@RequestMapping(value="/insert" , method=RequestMethod.GET)
	public ModelAndView insert(@ModelAttribute RegistrationVO registrationVO , @RequestParam("username")String username,@RequestParam("password")String password)
	{
		System.out.println("INSERT");
	LoginVo loginVO = new LoginVo();
	loginVO.setPassword(password);
	loginVO.setUsername(username);
	loginVO.setRole("ROLE_USER");
	loginVO.setEnabled("1");

	registrationVO.setLoginVO(loginVO);
	
	this.dao.insert(loginVO);
	this.dao.insert(registrationVO);
	
	return new ModelAndView("Registration","register",registrationVO);
	}

	@RequestMapping(value="/welcome" , method=RequestMethod.GET)
	public String load(Model model,HttpServletResponse response) throws IOException{
		System.out.println("********Entered LoginController********");
		
		String s= "Welcome User";
		model.addAttribute("username",s);
		return("welcome");
		
	}

	@RequestMapping(value="/admin" , method=RequestMethod.GET)
	public String loadadmin(Model model){
		System.out.println("********Entered LoginController Admin********");
		String s= "Welcome Admin";
		model.addAttribute("username",s);
		return("helloadmin");
		
	}
	
@RequestMapping(value="/register",method=RequestMethod.GET)
public String load(Model model){
	
	model.addAttribute("register",new RegistrationVO());
	return("Registration");
	
}
}
