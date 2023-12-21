package com.qcby.model;

public class EmployeePreference {
    private int EmployeeID = 0;
    private int PreferDay = 0;
    private String PreferTime = "";

    public int getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(int employeeID) {
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
