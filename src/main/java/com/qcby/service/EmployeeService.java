package com.qcby.service;

import com.qcby.model.Employee;

import java.util.List;

public interface EmployeeService {
    public boolean insert(Employee e);

    public boolean update(Employee e);

    public List<Employee> findByPreference(double StartTime,double EndTime);
}
