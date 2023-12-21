package com.qcby.model;

public class Employee {
    private int EmployeeID = 0;
    private String EmployeeName = "";
    private String EmployeeEmail = "";
    private String EmployeePosition = "";
    private int StoreID = 0;

    public int getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(int employeeID) {
        EmployeeID = employeeID;
    }

    public String getEmployeeName() {
        return EmployeeName;
    }

    public void setEmployeeName(String employeeName) {
        EmployeeName = employeeName;
    }

    public String getEmployeeEmail() {
        return EmployeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        EmployeeEmail = employeeEmail;
    }

    public String getEmployeePosition() {
        return EmployeePosition;
    }

    public void setEmployeePosition(String employeePosition) {
        EmployeePosition = employeePosition;
    }

    public int getStoreID() {
        return StoreID;
    }

    public void setStoreID(int storeID) {
        StoreID = storeID;
    }
}
