package com.acc.interfaceinventory.helper;

public class Constants {
	
public static String GETSERVICESQUERY = "select * from inventory_data where id = ? and scope= ?";
public static String GETSERVICESQUERYBYID = "select * from inventory_data where id = ?";
public static String GETSERVICESQUERYBYSCOPE = "select * from inventory_data where scope = ?";
public static String GETUSERSQUERY = "select * from users where username = ? and password= ?";
public static String GETINSERTQUERY = "insert into inventory_data(source_inventory,interfacename,description,interface_category,business_function,business_process,segment,lob,entities_exchange,connection_method,transport,connection_frequency,data_format,provider_technology,r1_disposition,r2_disposition,asynch_synch,service_provider,pattern,interface_complexity,provider_detail,steel_thread,modified_comment,scope,last_modification,id)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,STR_TO_DATE(?,'%Y-%m-%d'),?)";
public static String DELETEQUERY = "delete from inventory_data where source_inventory=? AND interfacename=? AND description=? AND interface_category=? AND business_function=? AND business_process=? AND segment=? AND lob=? AND entities_exchange=? AND connection_method=? AND transport=? AND connection_frequency=? AND data_format=? AND provider_technology=? AND r1_disposition=? AND r2_disposition=? AND asynch_synch=? AND service_provider=? AND pattern=? AND interface_complexity=? AND provider_detail=? AND steel_thread=? AND modified_comment=? AND scope=? AND last_modification=? AND id = ?";
public static String UPDATEQUERY="update inventory_data set source_inventory=?,interfacename=?,description=?,interface_category=?,business_function=?,business_process=?,segment=?,lob=?,entities_exchange=?,connection_method=?,transport=?,connection_frequency=?,data_format=?,provider_technology=?,r1_disposition=?,r2_disposition=?,asynch_synch=?,service_provider=?,pattern=?,interface_complexity=?,provider_detail=?,steel_thread=?,modified_comment=?,scope=?,last_modification=? where id=?";

}
