package com.acc.interfaceinventory.service;

import com.acc.interfaceinventory.Beans.LoginBean;
import com.acc.interfaceinventory.dao.LoginDAO;

public class LoginServiceImpl {
	public LoginBean checkLogin(String username, String password){
		return new LoginDAO().checkLogin(username, password);
	}
}
