package com.qcby.dao;

import com.qcby.model.Employee;

public interface EmployeeDao {
    public int insert(Employee e);

    public int update(Employee e);
}
