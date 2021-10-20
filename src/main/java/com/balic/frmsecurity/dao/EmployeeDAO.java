package com.balic.frmsecurity.dao;

import java.util.List;

import com.balic.frmsecurity.model.Employee;

public interface EmployeeDAO {

	void insertEmployee(Employee cus);
	void insertEmployees(List<Employee> employees);
	List<Employee> getAllEmployees();
	Employee getEmployeeById(String empId);
}
