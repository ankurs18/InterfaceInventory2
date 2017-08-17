package com.acc.interfaceinventory.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.acc.interfaceinventory.entity.Service;
import com.acc.interfaceinventory.helper.Constants;
import com.acc.interfaceinventory.helper.DataConnection;

public class ServiceDAO {
	private Connection connection;
	private ResultSet resultSet;
	private PreparedStatement statement;
	private Service service;

	public List<Service> searchById(int id){
		List<Service> listServices = new ArrayList<Service>();
		try {
			connection = DataConnection.createConnection();
		
		statement = connection.prepareStatement(Constants.GETSERVICESQUERY);
		statement.setInt(1, id);
		resultSet = statement.executeQuery();
		
		while (resultSet.next()) {
			service = new Service(resultSet.getString("source_inventory"), resultSet.getString("interfacename"), resultSet.getString("description"), resultSet.getString("interface_category"), resultSet.getString("business_function"), resultSet.getString("business_process"), resultSet.getString("segment"), resultSet.getString("lob"), resultSet.getString("entities_exchange"), resultSet.getString("connection_method"), resultSet.getString("transport"), resultSet.getString("connection_frequency"), resultSet.getString("data_format"), resultSet.getString("provider_technology"), resultSet.getString("r1_disposition"), resultSet.getString("r2_disposition"), resultSet.getString("asynch_synch"), resultSet.getString("service_provider"), resultSet.getString("pattern"), resultSet.getString("interface_complexity"), resultSet.getString("provider_detail"), resultSet.getString("steel_thread"), resultSet.getString("modified_comment"), resultSet.getDate("last_modification"), resultSet.getInt("id") , resultSet.getBoolean("scope"));
			listServices.add(service);
		}
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listServices;
		
	}
	public int delete(Service service){
		List<Service> listServices = new ArrayList<Service>();
		int status = 0;
		try {
			connection = DataConnection.createConnection();
		
		statement = connection.prepareStatement(Constants.DELETEQUERY);
		statement.setString(1, service.getSource_inventory());
		statement.setString(2, service.getInterfacename());
		statement.setString(3, service.getDescription());
		statement.setString(4, service.getInterface_category());
		statement.setString(5, service.getBusiness_function());
		statement.setString(6, service.getBusiness_process());
		statement.setString(7, service.getSegment());
		statement.setString(8, service.getLob());
		statement.setString(9, service.getEntities_exchange());
		statement.setString(10, service.getConnection_method());
		statement.setString(11, service.getTransport());
		statement.setString(12, service.getConnection_frequency());
		statement.setString(13, service.getData_format());
		statement.setString(14, service.getProvider_technology());
		statement.setString(15, service.getR1_disposition());
		statement.setString(16, service.getR2_disposition());
		statement.setString(17, service.getAsynch_synch());
		statement.setString(18, service.getService_provider());
		statement.setString(19, service.getPattern());
		statement.setString(20, service.getInterface_complexity());
		statement.setString(21, service.getProvider_detail());
		statement.setString(22, service.getSteel_thread());
		statement.setString(23, service.getModified_comment());
		statement.setBoolean(24, service.isScope());
		statement.setDate(25, service.getLast_modification());
		statement.setInt(26, service.getId());
		status = statement.executeUpdate();
		
		
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
		
	}
	public Service addEntry(Service service){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		java.sql.Date sqlDate = new java.sql.Date(date.getTime()); 
		service.setLast_modification(sqlDate);
		try {
			connection = DataConnection.createConnection();
		
		statement = connection.prepareStatement(Constants.GETINSERTQUERY);
		statement.setString(1, service.getSource_inventory());
		statement.setString(2, service.getInterfacename());
		statement.setString(3, service.getDescription());
		statement.setString(4, service.getInterface_category());
		statement.setString(5, service.getBusiness_function());
		statement.setString(6, service.getBusiness_process());
		statement.setString(7, service.getSegment());
		statement.setString(8, service.getLob());
		statement.setString(9, service.getEntities_exchange());
		statement.setString(10, service.getConnection_method());
		statement.setString(11, service.getTransport());
		statement.setString(12, service.getConnection_frequency());
		statement.setString(13, service.getData_format());
		statement.setString(14, service.getProvider_technology());
		statement.setString(15, service.getR1_disposition());
		statement.setString(16, service.getR2_disposition());
		statement.setString(17, service.getAsynch_synch());
		statement.setString(18, service.getService_provider());
		statement.setString(19, service.getPattern());
		statement.setString(20, service.getInterface_complexity());
		statement.setString(21, service.getProvider_detail());
		statement.setString(22, service.getSteel_thread());
		statement.setString(23, service.getModified_comment());
		statement.setBoolean(24, service.isScope());
		
		statement.setDate(25, service.getLast_modification());
		statement.setFloat(26, service.getId());
		int status=statement.executeUpdate();
		
		if(status==0)
			service = null;
		
		}
		 catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return service;
		
	}
	public int modifyEntry(Service service){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		java.sql.Date sqlDate = new java.sql.Date(date.getTime()); 
		try {
			connection = DataConnection.createConnection();
		
		statement = connection.prepareStatement(Constants.UPDATEQUERY);
		statement.setString(1, service.getSource_inventory());
		statement.setString(2, service.getInterfacename());
		statement.setString(3, service.getDescription());
		statement.setString(4, service.getInterface_category());
		statement.setString(5, service.getBusiness_function());
		statement.setString(6, service.getBusiness_process());
		statement.setString(7, service.getSegment());
		statement.setString(8, service.getLob());
		statement.setString(9, service.getEntities_exchange());
		statement.setString(10, service.getConnection_method());
		statement.setString(11, service.getTransport());
		statement.setString(12, service.getConnection_frequency());
		statement.setString(13, service.getData_format());
		statement.setString(14, service.getProvider_technology());
		statement.setString(15, service.getR1_disposition());
		statement.setString(16, service.getR2_disposition());
		statement.setString(17, service.getAsynch_synch());
		statement.setString(18, service.getService_provider());
		statement.setString(19, service.getPattern());
		statement.setString(20, service.getInterface_complexity());
		statement.setString(21, service.getProvider_detail());
		statement.setString(22, service.getSteel_thread());
		statement.setString(23, service.getModified_comment());
		statement.setBoolean(24, service.isScope());
		statement.setDate(25, sqlDate);
		statement.setFloat(26, service.getId());
		int a=statement.executeUpdate();
		
		return a;
		
		}
		
		 catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	
	public static void main(String args[]){
		List<Service> list= new ServiceDAO().searchById(479);
		for(Service s:list)
		{
			System.out.println(s.toString());
		}
	}
}
