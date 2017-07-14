package com.acc.interfaceinventory.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.acc.interfaceinventory.entity.Service;
import com.acc.interfaceinventory.helper.Constants;
import com.acc.interfaceinventory.helper.DataConnection;

public class SearchDAO {
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
			service = new Service(resultSet.getString("source_inventory"), resultSet.getString("interfacename"), resultSet.getString("description"), resultSet.getString("interface_category"), resultSet.getString("business_function"), resultSet.getString("business_process"), resultSet.getString("segment"), resultSet.getString("lob"), resultSet.getString("entities_exchange"), resultSet.getString("connection_method"), resultSet.getString("transport"), resultSet.getString("connection_frequency"), resultSet.getString("data_format"), resultSet.getString("provider_technology"), resultSet.getString("r1_disposition"), resultSet.getString("r2_disposition"), resultSet.getString("asynch_synch"), resultSet.getString("service_provider"), resultSet.getString("pattern"), resultSet.getString("interface_complexity"), resultSet.getString("provider_detail"), resultSet.getString("steel_thread"), resultSet.getString("modified_comment"), resultSet.getBoolean("scope_r1"), resultSet.getBoolean("scope_r2"), resultSet.getDate("last_modification"), resultSet.getInt("id"));
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
	
	public static void main(String args[]){
		List<Service> list= new SearchDAO().searchById(479);
		for(Service s:list)
		{
			System.out.println(s.toString());
		}
	}
}
