package com.acc.interfaceinventory.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.acc.interfaceinventory.entity.Service;
import com.acc.interfaceinventory.service.ServiceFacade;
import com.acc.interfaceinventory.service.ServiceImpl;

@Controller
public class ServiceController {

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchForm(HttpServletRequest request, HttpServletResponse response) {
		/*
		 * ModelAndView mv = new ModelAndView(); mv.setViewName("search");
		 * return mv;
		 */
		System.out.println("search page");
		return "search";
	}

	@RequestMapping(value = "/performSearch", method = RequestMethod.POST)
	public ModelAndView performSearch(HttpServletRequest request, HttpServletResponse response) {
		ServiceFacade serviceFacade = new ServiceImpl();
		System.out.println("ankur" + request.getParameter("serviceId"));
		ModelAndView mv = new ModelAndView();
		// mv.addObject("allServices",
		// serviceFacade.searchById(Integer.parseInt(request.getParameter("serviceId"))));
		request.getSession().setAttribute("allServices",
				serviceFacade.searchById(Integer.parseInt(request.getParameter("serviceId"))));
		mv.setViewName("searchOutput");
		return mv;

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView modify(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		ServiceFacade serviceFacade = new ServiceImpl();
		List<Service> list = (List<Service>) request.getSession().getAttribute("allServices");
		System.out.println("size"+list.size());
		System.out.println("pos"+request.getParameter("radioButton"));
		Service service = list.get(Integer.parseInt(request.getParameter("radioButton"))-1);
		
		if (request.getParameter("action").equals("Modify")) {
			System.out.println("here" + "modify");

			mv.addObject("Service",service);
			mv.setViewName("updatePage");
		}
		if (request.getParameter("action").equals("Delete")) {
			mv.setViewName("searchOutput");
			
			if (serviceFacade.delete(service) > 0)
			{
				mv.addObject("message", "Success: Service row deleted from database.");
				list.remove(service);
			}
			else
				mv.addObject("message", "An error occured while trying to deleted the service from database.");
			request.getSession().setAttribute("allServices", list);
		}

		return mv;

	}
	 @RequestMapping(value = "/AddEl", method = RequestMethod.GET)
	    public ModelAndView ADD(HttpServletRequest request, HttpServletResponse response) 
	    {
	    	ModelAndView mv = new ModelAndView();
	    	int id = Integer.parseInt(request.getParameter("ID"));
	    	String source_inventory = request.getParameter("SourceInventory");
	    	String Interface_name = request.getParameter("InterfaceName");
	    	String description = request.getParameter("Description");
	    	String Interface_grp = request.getParameter("Interface_group");
	    	String bussiness_func = request.getParameter("BusinessFunction");
	    	String bussiness_process = request.getParameter("BusinessProcess");
	    	String segment = request.getParameter("Segment");
	    	String LOB = request.getParameter("LOB");
	    	String entities = request.getParameter("EntitiesorinformationExchange");
	    	String connection_method = request.getParameter("ConnectionMethod");
	    	String transport = request.getParameter("Transport");
	    	String connection_frequency = request.getParameter("ConnectionFrequency(Trans_Type)");
	    	String data_format = request.getParameter("DataFormat");
	    	String provider_technology = request.getParameter("Provider_Technology");
	    	Boolean scope_r1 = Boolean.parseBoolean(request.getParameter("scope_r1"));
	    	String r1_disposition = request.getParameter("R1_Disposition");
	    	Boolean scope_r2 = Boolean.parseBoolean(request.getParameter("scope_r2"));
	    	String r2_disposition = request.getParameter("R2_Disposition");
	    	String asynch_synch = request.getParameter("Asynch_Synch");
	    	String service_provider = request.getParameter("Service_Provider");
	    	String pattern = request.getParameter("Pattern");
	    	String interface_complexity = request.getParameter("Complexity");
	    	String prov_adap_details = request.getParameter("ProviderDetail");
	    	String steel_thread = request.getParameter("Steel_Thread");
	    	
	    	String modified_comment = request.getParameter("ModifiedComment");
	    	ServiceImpl impl=new ServiceImpl();
	    	int result=impl.addElement(id, source_inventory, Interface_name, description, Interface_grp, bussiness_func, bussiness_process, segment, LOB, entities, connection_method, transport, connection_frequency, data_format, provider_technology, scope_r1, r1_disposition, scope_r2, r2_disposition, asynch_synch, service_provider, pattern, interface_complexity, prov_adap_details, steel_thread, null, modified_comment);
	    	if(result==0)
	    	{
	    		mv.setViewName("Error");
	    		
	    	}
	    	else if(result==1)
	    	{
	    		
	    		mv.setViewName("NewFile");
	    	}
	    	
	    	return mv;
	    }
	    @RequestMapping(value = "/addservice", method = RequestMethod.GET)
	    public ModelAndView add(HttpServletRequest request, HttpServletResponse response){
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("AddElement");
	    	return mv;
	    	
	    }

}
