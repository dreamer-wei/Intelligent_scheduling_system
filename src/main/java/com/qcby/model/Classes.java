package com.qcby.model;

import java.util.Date;

public class Classes {
    private int DayName = 0;
    private Date Day;
    private int StartTime = 0;
    private double Duration = 0.0;
    private int EmployeeID = 0;
    private int StoreID = 0;

    public int getDayName() {
        return DayName;
    }

    public void setDayName(int dayName) {
        DayName = dayName;
    }

    public Date getDay() {
        return Day;
    }

    public void setDay(Date day) {
        Day = day;
    }

    public int getStartTime() {
        return StartTime;
    }

    public void setStartTime(int startTime) {
        StartTime = startTime;
    }

    public double getDuration() {
        return Duration;
    }

    public void setDuration(double duration) {
        Duration = duration;
    }

    public int getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(int employeeID) {
        EmployeeID = employeeID;
    }

    public int getStoreID() {
        return StoreID;
    }

    public void setStoreID(int storeID) {
        StoreID = storeID;
    }
}
