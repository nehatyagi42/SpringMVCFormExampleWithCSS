package com.rtpl.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.rtpl.beans.Employee;

public class EmpDao {

	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template=template;	
	}
	
	
	
	public int save(Employee empsave) {
		String sql="insert into EmployeeDetails(name,salary,designation) values('"+empsave.getName()+"',"+ empsave.getSalary()+", ' "+empsave.getDesignation()+"')";  
		
		 return template.update(sql);  
	}
	
	
	public int update(Employee empupdate){    
	    String sql="update EmployeeDetails set name='"+empupdate.getName()+"', salary="+empupdate.getSalary()+",designation='"+empupdate.getDesignation()+"' where id="+empupdate.getId()+"";    
	    return template.update(sql);    
	} 
	
	
	public int delete(int id){    
	    String sql="delete from EmployeeDetails where id="+id+"";    
	    return template.update(sql);    
	}   
	
	public Employee getEmpById(int id){    
	    String sql="select * from EmployeeDetails where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Employee>(Employee.class));    
	}   
	
	public List<Employee> getEmployees(){
		return template.query("select * from EmployeeDetails", new RowMapper<Employee>(){
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee emp = new Employee();
				 emp.setId(rs.getInt(1));    
		            emp.setName(rs.getString(2));    
		            emp.setSalary(rs.getFloat(3));    
		            emp.setDesignation(rs.getString(4));    
				
				return emp;
			 }    
	    });    
	}    
	}   




