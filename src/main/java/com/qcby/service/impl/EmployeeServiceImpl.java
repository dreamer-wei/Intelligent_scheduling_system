package com.qcby.service.impl;

import com.qcby.dao.EmployeeDao;
import com.qcby.model.Employee;
import com.qcby.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    public EmployeeDao employeeDao;

    @Override
    public boolean insert(Employee e) {
        return employeeDao.insert(e) > 0;
    }

    @Override
    public boolean update(Employee e) {
        return employeeDao.update(e) > 0;
    }

    @Override
    public List<Employee> findByPreference(double StartTime, double EndTime){
        Map<String,Object> map=new HashMap<>();
        map.put("StartTime",StartTime);
        map.put("EndTime",EndTime);
        return employeeDao.findByPreference(map);
    }
}
