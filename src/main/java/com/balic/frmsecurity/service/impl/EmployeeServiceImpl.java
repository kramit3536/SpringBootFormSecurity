package com.balic.frmsecurity.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balic.frmsecurity.dao.EmployeeDAO;
import com.balic.frmsecurity.model.Employee;
import com.balic.frmsecurity.service.EmployeeService;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Override
	public void insertEmployee(Employee emp) {
		employeeDAO.insertEmployee(emp);
	}

	@Override
	public void insertEmployees(List<Employee> employees) {
		
	}

	@Override
	public List<Employee> getAllEmployees() {
		return employeeDAO.getAllEmployees();
	}

	@Override
	public void getEmployeeById(String empid) {
		
	}

	
}
