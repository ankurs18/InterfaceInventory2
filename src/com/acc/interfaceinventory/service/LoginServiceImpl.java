package com.acc.interfaceinventory.service;


import com.acc.interfaceinventory.dao.LoginDAO;
import com.acc.interfaceinventory.entity.LoginBean;

public class LoginServiceImpl {
	public LoginBean checkLogin(String username, String password){
		return new LoginDAO().checkLogin(username, password);
	}
}
