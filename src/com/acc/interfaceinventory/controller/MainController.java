package com.acc.interfaceinventory.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.acc.interfaceinventory.entity.LoginBean;
import com.acc.interfaceinventory.service.LoginServiceImpl;
 

@Controller
public class MainController {
 
    @RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
    public String welcomePage(Model model) {
    	  model.addAttribute("msg", "Please Enter Your Login Details");
          return "loginPage";
    }
 
    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String init(Model model) {
      return "welcomePage";
    }
    
    @RequestMapping(value = "/AboutInterfaceInventory", method = RequestMethod.GET)
    public String about(Model model) {
      return "AboutInterfaceInventory";
    }
    
    @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
    public String logout(Model model) {
      return "logoutSuccessful";
    }
 

    @RequestMapping("/CheckLogin")
    public ModelAndView submit(HttpServletRequest request, HttpServletResponse response){
    	ModelAndView mv = new ModelAndView();
    	LoginServiceImpl loginService = new LoginServiceImpl();
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	LoginBean loginBean = loginService.checkLogin(username, password);
    	if(loginBean== null)
    		mv.setViewName("403Page");
    	else 
    	{
    		mv.setViewName("welcomePage");
    		mv.addObject("User", loginBean);
    	}
    		
    	return mv;
    }
}