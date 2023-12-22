package com.qcby.tools;

import com.qcby.model.Employee;

public enum PositionPriority {
    //各个职位对应的优先级值
    MANAGER(4),
    DEPUTY_MANAGER(3),
    TEAM_LEADER(2),
    CLERK(1);

    private final int priority;

    PositionPriority(int priority) {
        this.priority = priority;
    }

    public static int getPriority(Employee employee) {
        String position = employee.getEmployeePosition();
        switch (position) {
            case "门店经理": return MANAGER.priority;
            case "副经理": return DEPUTY_MANAGER.priority;
            case "小组长": return TEAM_LEADER.priority;
            default:
                if (position.startsWith("店员")) {
                    return CLERK.priority;
                } else {
                    return 0;
                }
        }
    }
}