package com.acc.interfaceinventory.service;

import java.util.List;

import com.acc.interfaceinventory.dao.SearchDAO;
import com.acc.interfaceinventory.entity.Service;

public class ServiceImpl extends ServiceFacade{

	
	public List<Service> searchById(int id) {
		SearchDAO searchDAO = new SearchDAO();
		return searchDAO.searchById(id);
	}
	
}
