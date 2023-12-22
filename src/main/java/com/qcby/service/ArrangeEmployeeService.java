package com.qcby.service;

import com.qcby.model.Employee;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface ArrangeEmployeeService {
    public Map<String, ArrayList<Employee>> getDayScheduleResult(List<String> timeList, List<Integer> employeeNum);
    public List<Map<String, ArrayList<Employee>>> getWeekScheduleResult(List<String> timeList, List<Integer> employeeNum);
}
