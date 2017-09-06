package com.acc.interfaceinventory.service;


import java.sql.Date;
import java.util.List;

import com.acc.interfaceinventory.service.ServiceFacade;
import com.acc.interfaceinventory.dao.ServiceDAO;
import com.acc.interfaceinventory.entity.Service;

public class ServiceImpl implements ServiceFacade{
	private ServiceDAO serviceDAO;
	public ServiceImpl(){
		serviceDAO = new ServiceDAO();
}
	
	public List<Service> searchById(int id , String scope){
		
		return serviceDAO.searchById(id,scope);
	}
	
	
	public int delete(Service service){
		return serviceDAO.delete(service);
	}
	public Service addElement(int id,String source_inventory,String Interface_name,String description,String Interface_grp,String bussiness_func,String bussiness_process,String segment,String LOB,String entities,String connection_method,String transport,String connection_frequency,String data_format,String provider_technology, String r1_disposition,String r2_disposition,String asynch_synch,String service_provider,String pattern,String interface_complexity,String prov_adap_details,String steel_thread,Date last_modification_on,String modified_comment, String scope)
	{ 
		Service service=new Service(source_inventory,Interface_name,description,Interface_grp,bussiness_func,bussiness_process,segment,LOB,entities,connection_method,transport,connection_frequency,data_format,provider_technology,r1_disposition,r2_disposition,asynch_synch,service_provider,pattern,interface_complexity,prov_adap_details,steel_thread,modified_comment,last_modification_on,id , scope.equals("r1"));
		
		
		return serviceDAO.addEntry(service);
		
	}
	public int modify(int id,String source_inventory,String Interface_name,String description,String Interface_grp,String bussiness_func,String bussiness_process,String segment,String LOB,String entities,String connection_method,String transport,String connection_frequency,String data_format,String provider_technology,String r1_disposition,String r2_disposition,String asynch_synch,String service_provider,String pattern,String interface_complexity,String prov_adap_details,String steel_thread,Date last_modification_on,String modified_comment , String scope)
	{
		Service service=new Service(source_inventory,Interface_name,description,Interface_grp,bussiness_func,bussiness_process,segment,LOB,entities,connection_method,transport,connection_frequency,data_format,provider_technology,r1_disposition,r2_disposition,asynch_synch,service_provider,pattern,interface_complexity,prov_adap_details,steel_thread,modified_comment,last_modification_on,id , scope.equals("r1"));
		return serviceDAO.modifyEntry(service);
		
		
	}


	
	
	
}
