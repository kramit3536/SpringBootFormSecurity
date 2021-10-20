package com.balic.frmsecurity.service;

import java.util.List;

import com.balic.frmsecurity.model.Employee;

public interface EmployeeService {

	void insertEmployee(Employee emp);
	void insertEmployees(List<Employee> employees);
	List<Employee> getAllEmployees();
	void getEmployeeById(String empid);
}
