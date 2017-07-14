package com.acc.interfaceinventory.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.acc.interfaceinventory.service.ServiceFacade;
import com.acc.interfaceinventory.service.ServiceImpl;  

@Controller
public class SearchController {

	
	@RequestMapping(value = "/", method = RequestMethod.GET)  
    public String home() {  
        /*ModelAndView mv = new ModelAndView();
        mv.setViewName("search");
        return mv;  */
		
		return "hello";
    } 
	@RequestMapping(value = "/hello.jsp")  
    public String hello() {  
        /*ModelAndView mv = new ModelAndView();
        mv.setViewName("search");
        return mv;  */
		
		return "hello";
    } 
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
    public String searchForm(HttpServletRequest request,
			HttpServletResponse response) {  
        /*ModelAndView mv = new ModelAndView();
        mv.setViewName("search");
        return mv;  */
		System.out.println("search page");
		return "search";
    } 
	@RequestMapping(value = "/performSearch", method = RequestMethod.POST)
    public ModelAndView performSearch(HttpServletRequest request,
			HttpServletResponse response) {  
		ServiceFacade serviceFacade = new ServiceImpl(); 
		System.out.println("ankur"+request.getParameter("serviceId"));
        ModelAndView mv = new ModelAndView();
        mv.addObject("allServices", serviceFacade.searchById(Integer.parseInt(request.getParameter("serviceId"))));
        mv.setViewName("searchOutput");
        return mv;  
		
		
    } 
}
 



