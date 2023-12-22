

package com.qcby.controller;

import com.qcby.model.Employee;
import com.qcby.service.ArrangeEmployeeService;
import com.qcby.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

@Controller
@RequestMapping("/Schedule")
public class ScheduleController {

    private List<Integer> selectedRules = new ArrayList<>(); //排班时间段列表
    private List<String> timeList = new ArrayList<>(); //排班时间段列表
    private List<Integer> employeeNum = new ArrayList<>(); //每个时间段所需员工数列表
    private static List<Integer> lack = new ArrayList<>(); //每个时间段缺少的员工数列表
    private static Map<String, PriorityQueue<Employee>> spMap = new HashMap<>(); //记录各时间段的候选员工
    private Map<String, ArrayList<Employee>> saMap = new HashMap<>(); //记录各时间段最终排班情况
    private List<Map<String, ArrayList<Employee>>> saMaps = new ArrayList<>(); //记录各时间段最终排班情况

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private ArrangeEmployeeService arrangeEmployeeService;

 /*/*    @RequestMapping("/selectRule") //选取排班规则
    public String selectRule(@RequestParam("dropdown1") int value1, @RequestParam("dropdown2") int value2, @RequestParam("dropdown3") int value3) {
        selectedRules.add(value1); //开店规则
        selectedRules.add(value2); //运营规则
        selectedRules.add(value3); //关店规则
        return "forward:/generateSchedule";
    }

    @RequestMapping("/generateSchedule") //生成排班方案
    public String generateSchedule() {
        //根据开店规则的值设置timeList[0],根据除数设置employeeNum[0]
        //根据运营规则的值，例如假设是4，设置timeList[1到4],根据除数和给定的预测客流设置employeeNum[0-4]
        //根据关店规则的值，设置timeList[5],根据除数设置employeeNum[5]
        return "forward:/arrangeEmployee";
    }*//*
     */

    @GetMapping("/arrangeEmployee") //为方案安排人员
    public String arrangeEmployee(Model model) {
        //if (按照周排)
        timeList = new ArrayList<>();
        employeeNum = new ArrayList<>();
        timeList.add("8:00-10:00");
        timeList.add("10:00-12:00");
        timeList.add("12:00-14:00");
        timeList.add("14:00-16:00");
        timeList.add("16:00-18:00");
        timeList.add("18:00-20:00");
        employeeNum.add(1);
        employeeNum.add(1);
        employeeNum.add(1);
        employeeNum.add(1);
        employeeNum.add(1);
        employeeNum.add(1);
        saMaps = arrangeEmployeeService.getWeekScheduleResult(timeList, employeeNum);
        model.addAttribute("timeList", timeList);
        model.addAttribute("saMaps", saMaps); //填充数据
        return "schedule"; //排班完毕，跳转到排班表视图
    }
}

