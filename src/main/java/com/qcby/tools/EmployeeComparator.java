package com.qcby.tools;

import com.qcby.model.Employee;

import java.util.Comparator;

public class EmployeeComparator implements Comparator<Employee> {
    @Override
    public int compare(Employee e1, Employee e2) {
        // 结合职位计算优先级
        int priority1 = e1.getEmployeeID() + PositionPriority.getPriority(e1);
        int priority2 = e2.getEmployeeID() + PositionPriority.getPriority(e2);
        return Integer.compare(priority2, priority1);
    }
}