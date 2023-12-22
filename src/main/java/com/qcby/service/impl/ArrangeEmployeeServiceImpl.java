package com.qcby.service.impl;

import com.qcby.model.Employee;
import com.qcby.service.EmployeeService;
import com.qcby.service.ArrangeEmployeeService;
import com.qcby.tools.EmployeeComparator;
import com.qcby.tools.TimeConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ArrangeEmployeeServiceImpl implements ArrangeEmployeeService {
    @Autowired
    private EmployeeService employeeService;
    private List<String> timeList = new ArrayList<>(); //排班时间段列表
    private List<Integer> employeeNum = new ArrayList<>(); //每个时间段所需员工数列表
    private ArrayList<Integer> lack = new ArrayList<>(); //每个时间段缺少的员工数列表
    private Map<String, PriorityQueue<Employee>> spMap = new HashMap<>(); //记录各时间段的候选员工
    private Map<String, ArrayList<Employee>> saMap = new HashMap<>(); //记录各时间段最终排班情况
    private List<Map<String, ArrayList<Employee>>> saMaps = new ArrayList<>();
    private void prepareEmployee() {
        for (String time : timeList) {
            PriorityQueue<Employee> pq = new PriorityQueue<>(new EmployeeComparator());
            TimeConverter tc = new TimeConverter(time);
            List<Employee> employees = employeeService.findByPreference(tc.getStartTime(), tc.getEndTime());
            pq.addAll(employees);
            spMap.put(time, pq); //将time时段的候选堆放入到集合中
        }
    }
    private void arrangeByDay() {
        boolean lack_state = false; //是否有缺失
        for (int i = 0; i < timeList.size(); i++) {
            PriorityQueue<Employee> pq = spMap.get(timeList.get(i));
            int num = employeeNum.get(i);
            while (num > 0) {
                if (pq.isEmpty()) {
//                    lack.set(i, lack.get(i) + 1);
                    lack_state = true;
                } else {
                    Employee priorEmployee = pq.peek(); //获取堆顶
                    if (saMap.containsKey(timeList.get(i))) {
                        saMap.get(timeList.get(i)).add(priorEmployee);
                    } else {
                        saMap.put(timeList.get(i), new ArrayList<Employee>());
                        saMap.get(timeList.get(i)).add(priorEmployee);
                    }
                    //加入排班结果中
                    pq.poll(); //删除堆顶
                }
                num--;
            }
        }

/*
if (lack_state) { //有缺失则加入未排班的员工
            Set<Employee> scheduledEmployees = new HashSet<>();//已排班的员工
            for (List<Employee> employees : saMap.values()) {
                scheduledEmployees.addAll(employees);
            }
            List<Employee> otherEmployees = employeeService.findOtherEmployee(scheduledEmployees);  //根据已排班员工查找未排班的员工
            //补充人员
            for (int i = 0; i < lack.size(); i++) {
                int lackNum = lack.get(i);
                while (lackNum > 0) {
                    Random random = new Random();
                    int index = random.nextInt(otherEmployees.size()); //随机获取一个员工所在列表下标
                    saMap.get(timeList.get(i)).add(otherEmployees.get(index)); //加入次随机员工
                }
            }

        }
*/
    }
    @Override
    public Map<String, ArrayList<Employee>> getDayScheduleResult(List<String> timeList, List<Integer> employeeNum) {
        this.timeList = timeList;
        this.employeeNum = employeeNum;
        prepareEmployee();
        arrangeByDay();
        return saMap;
    }
    @Override
    public List<Map<String, ArrayList<Employee>>> getWeekScheduleResult(List<String> timeList, List<Integer> employeeNum) {
        this.timeList = timeList;
        this.employeeNum = employeeNum;
        prepareEmployee();
        for (int i = 0; i < 7; i++) {
            arrangeByDay();
            saMaps.add(saMap); //加入该日的排班结果
            saMap=new HashMap<>(); //清空该日的排班结果
        }
        return saMaps; //返回周排班结果
    }
}
