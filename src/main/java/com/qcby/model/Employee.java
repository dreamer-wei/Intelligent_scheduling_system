package com.qcby.model;

public class Employee {
    private String EmployeeID="";
    private String EmployeeName="";
    private String EmployeeEmail="";
    private String EmployeePosition="";
    private String Store="";

    public String getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(String employeeID) {
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

    public String getStore() {
        return Store;
    }

    public void setStore(String store) {
        Store = store;
    }
}
