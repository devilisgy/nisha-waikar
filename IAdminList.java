package com.dao;

import java.util.List;

import com.pojos.AdminList;

public interface IAdminList {
	
	public boolean addFlights(AdminList flightList);
    public List<AdminList> getAllFlights();

}
