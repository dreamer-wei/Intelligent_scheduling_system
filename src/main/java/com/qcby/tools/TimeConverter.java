package com.qcby.tools;

public class TimeConverter {
    private String timeRange = "";
    private double startTime = 0;
    private double endTime = 0;
    private double convertTimeStringToDouble(String timeString) {
        String[] timeParts = timeString.split(":");
        int hours = Integer.parseInt(timeParts[0].trim());
        int minutes = Integer.parseInt(timeParts[1].trim());

        return hours + (minutes / 60.0);
    }
    private void convertTimeRangeStringToDouble() {
        String[] timeParts = timeRange.split("-");

        String startTimeString = timeParts[0];
        String endTimeString = timeParts[1];

        startTime = convertTimeStringToDouble(startTimeString);
        endTime = convertTimeStringToDouble(endTimeString);

    }

    public TimeConverter(String timeRange) {
        this.timeRange = timeRange;
        convertTimeRangeStringToDouble();
    }

    public double getStartTime() {
        return startTime;
    }

    public double getEndTime() {
        return endTime;
    }
}
