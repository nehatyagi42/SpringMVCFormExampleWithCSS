package com.rtpl.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtpl.beans.Employee;
import com.rtpl.dao.EmpDao;


@Controller
public class LoginController {
	
@Autowired
EmpDao empdao;
// This bmethod redirect to login.jsp from / index.jsp
	  @RequestMapping(value="/login", method= RequestMethod.GET)

	  public String showlogin(Model model) {
	  	return "login";
	  }

	  @RequestMapping(value = "/login.do", method = RequestMethod.POST)

	  public String loginProcess(  @ModelAttribute("user") Employee emp) {
	   
	    if (null != emp) {

	    	 return "redirect:/viewemp";
	    } 

	    return   "redirect:/login"; 

	  }
}
