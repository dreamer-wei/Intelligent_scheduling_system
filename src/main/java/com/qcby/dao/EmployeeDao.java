package com.qcby.dao;

import com.qcby.model.Employee;

import java.util.List;
import java.util.Map;

public interface EmployeeDao {
    public int insert(Employee e);

    public int update(Employee e);

    public List<Employee> findByPreference(Map<String,Object> map);
}
