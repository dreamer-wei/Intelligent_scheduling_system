//package com.qcby.controller;
//
//import com.qcby.model.Employee;
//import com.qcby.service.EmployeeService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.util.*;
//
//@Controller
//@RequestMapping("/Schedule")
//public class ScheduleController {
//    private enum EmployeeRole { //各个职位对应的优先级值
//        MANAGER(4),
//        DEPUTY_MANAGER(3),
//        TEAM_LEADER(2),
//        CLERK(1);
//
//        private final int priority;
//
//        EmployeeRole(int priority) {
//            this.priority = priority;
//        }
//
//        public int getPriority() {
//            return priority;
//        }
//    }
//    private static List<Integer> selectedRules = new ArrayList<>(); //排班时间段列表
//    private static List<String> timeList = new ArrayList<>(); //排班时间段列表
//    private static List<Integer> employeeNum = new ArrayList<>(); //每个时间段所需员工数列表
//    private static List<Integer> lack = new ArrayList<>(); //每个时间段缺少的员工数列表
//    private static Map<String, PriorityQueue<Employee>> spMap = new HashMap<>(); //记录各时间段的候选员工
//    private static Map<String, ArrayList<Employee>> saMap = new HashMap<>(); //记录各时间段最终排班情况
//
//    @Autowired
//    private EmployeeService employeeService;
//
//    @RequestMapping("/selectRule") //选取排班规则
//    public String selectRule(@RequestParam("dropdown1") int value1, @RequestParam("dropdown2") int value2, @RequestParam("dropdown3") int value3) {
//        selectedRules.add(value1); //开店规则
//        selectedRules.add(value2); //运营规则
//        selectedRules.add(value3); //关店规则
//        return "forward:/generateSchedule";
//    }
//
//    @RequestMapping("/generateSchedule") //生成排班方案
//    public String generateSchedule() {
//        //根据开店规则的值设置timeList[0],根据除数设置employeeNum[0]
//        //根据运营规则的值，例如假设是4，设置timeList[1到4],根据除数和给定的预测客流设置employeeNum[0-4]
//        //根据关店规则的值，设置timeList[5],根据除数设置employeeNum[5]
//        return "forward:/arrangeEmployee";
//    }
//    @RequestMapping("/arrangeEmployee") //为方案安排人员
//    public String arrangeEmployee(Model model) {
//        for (String time : timeList) {
//            PriorityQueue<Employee> pq = new PriorityQueue<>();
//            //List<Employee> employees = employeeService.findByPreference(time);
//            //for (Employee employee : employees) {
//            //int workingYears = employeeService.getWorkingYears(employee); //获取工龄
//            //int priority = workingYears + EmployeeRole(position).getPriority(); //结合职位计算优先级
//            //pq.add(employee, -1 * priority); //值越小，优先级越高，故取相反数
//            //}
//            spMap.put(time, pq); //将time时段的候选堆放入到集合中
//        }
//        boolean lack_state = false; //是否有缺失
//        for (int i = 0; i < timeList.size(); i++) {
//            PriorityQueue<Employee> pq = spMap.get(timeList.get(i));
//            int num = employeeNum.get(i);
//            while (num > 0) {
//                if (pq.isEmpty()) {
//                    lack.set(i, lack.get(i) + 1);
//                    lack_state = true;
//                } else {
//                    Employee priorEmployee = pq.peek(); //获取堆顶
//                    saMap.get(timeList.get(i)).add(priorEmployee); //加入排班结果中
//                    pq.poll(); //删除堆顶
//                }
//                num--;
//            }
//        }
//
//        if (lack_state) { //有缺失则加入未排班的员工
//            Set<Employee> scheduledEmployees = new HashSet<>();//已排班的员工
//            for (List<Employee> employees : saMap.values()) {
//                scheduledEmployees.addAll(employees);
//            }
//            List<Employee> otherEmployees = employeeService.findOtherEmployee(scheduledEmployees);  //根据已排班员工查找未排班的员工
//            //补充人员
//            for (int i = 0; i < lack.size(); i++) {
//                int lackNum = lack.get(i);
//                while (lackNum > 0) {
//                    Random random = new Random();
//                    int index = random.nextInt(otherEmployees.size()); //随机获取一个员工所在列表下标
//                    saMap.get(timeList.get(i)).add(otherEmployees.get(index)); //加入次随机员工
//                }
//            }
//
//        }
//
//
//        model.addAttribute("saMap", saMap); //填充数据
//
//        return "schedule"; //排班完毕，跳转到排班表视图
//    }
//}
