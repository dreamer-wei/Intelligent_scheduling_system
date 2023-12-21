package com.qcby.model;

public class EmployeePreference {
    private String EmployeeID="";
    private int PreferDay=0;
    private String PreferTime="";

    public String getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(String employeeID) {
        EmployeeID = employeeID;
    }

    public int getPreferDay() {
        return PreferDay;
    }

    public void setPreferDay(int preferDay) {
        PreferDay = preferDay;
    }

    public String getPreferTime() {
        return PreferTime;
    }

    public void setPreferTime(String preferTime) {
        PreferTime = preferTime;
    }
}
