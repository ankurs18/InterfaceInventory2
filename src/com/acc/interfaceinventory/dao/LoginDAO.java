package com.acc.interfaceinventory.dao;


import java.security.Provider.Service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.acc.interfaceinventory.helper.Constants;
import com.acc.interfaceinventory.entity.LoginBean;
import com.acc.interfaceinventory.helper.DataConnection;

public class LoginDAO {
	private Connection connection;
	private ResultSet resultSet;
	private PreparedStatement statement;
	private Service service;
	
	public LoginBean checkLogin(String username, String password){
		LoginBean loginbean = null;
		try {
			connection = DataConnection.createConnection();
		
		statement = connection.prepareStatement(Constants.GETUSERSQUERY);
		statement.setString(1, username);
		statement.setString(2, password);
		resultSet = statement.executeQuery();
		
		if (resultSet.next()) {
			loginbean = new LoginBean(resultSet.getString("username"), resultSet.getString("password"), resultSet.getBoolean("isAdmin")); 
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return loginbean;
		
	}
	
	public static void main(String args[]){
		System.out.println(new LoginDAO().checkLogin("user1","12345"));
	}



	
}

	
	 
	

