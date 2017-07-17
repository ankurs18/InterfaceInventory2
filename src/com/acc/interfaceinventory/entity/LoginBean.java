package com.acc.interfaceinventory.entity;

public class LoginBean {
private String username;
private String password;
public LoginBean(String username, String password, boolean isAdmin) {
	super();
	this.username = username;
	this.password = password;
	this.isAdmin = isAdmin;
}
private boolean isAdmin;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}



}
