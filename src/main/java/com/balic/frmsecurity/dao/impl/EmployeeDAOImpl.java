package com.balic.frmsecurity.dao.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.balic.frmsecurity.dao.EmployeeDAO;
import com.balic.frmsecurity.model.Employee;

@Repository("employeeDAO")
public class EmployeeDAOImpl extends JdbcDaoSupport implements EmployeeDAO{
	
	@Autowired
	private DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
	}

	@Override
	public void insertEmployee(Employee emp) {
		
		String sql = "INSERT INTO EMP_DTLS " +
				"(empId, empName,address,salary) VALUES (?,?,?,?)";
		getJdbcTemplate().update(sql, new Object[]{
				emp.getEmpId(), emp.getEmpName(), emp.getAddress(),emp.getSalary()
		});
	}

	@Override
	public void insertEmployees(List<Employee> employees) {
		
	}

	@Override
	public List<Employee> getAllEmployees() {
		String sql = "SELECT * FROM EMP_DTLS";
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
		
		List<Employee> result = new ArrayList<Employee>();
		for(Map<String, Object> row:rows){
			Employee emp = new Employee();
			emp.setEmpId((String)row.get("empId"));
			emp.setEmpName((String)row.get("empName"));
			emp.setAddress((String)row.get("address"));
			BigDecimal bigDecimal = (BigDecimal)row.get("salary");
			emp.setSalary(bigDecimal.intValue());
			result.add(emp);
		}
		
		return result;
	}

	@Override
	public Employee getEmployeeById(String empId) {
		return null;
	}

}
