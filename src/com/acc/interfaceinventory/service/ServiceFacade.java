package com.acc.interfaceinventory.service;

import java.sql.Date;
import java.util.List;

import com.acc.interfaceinventory.entity.Service;

public interface ServiceFacade {
	
	public int delete(Service service);
	public Service addElement(int id,String source_inventory,String Interface_name,String description,String Interface_grp,String bussiness_func,String bussiness_process,String segment,String LOB,String entities,String connection_method,String transport,String connection_frequency,String data_format,String provider_technology,String r1_disposition,String r2_disposition,String asynch_synch,String service_provider,String pattern,String interface_complexity,String prov_adap_details,String steel_thread,Date last_modification_on,String modified_comment , String scope);
	public int modify(int id,String source_inventory,String Interface_name,String description,String Interface_grp,String bussiness_func,String bussiness_process,String segment,String LOB,String entities,String connection_method,String transport,String connection_frequency,String data_format,String provider_technology,String r1_disposition,String r2_disposition,String asynch_synch,String service_provider,String pattern,String interface_complexity,String prov_adap_details,String steel_thread,Date last_modification_on,String modified_comment, String scope);
	public List<Service> searchById(int parseInt, String parameter);
}
