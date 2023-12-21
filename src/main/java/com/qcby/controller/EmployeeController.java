package com.qcby.controller;

import com.qcby.model.Employee;
import com.qcby.model.Store;
import com.qcby.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    private EmployeeService es;

    @RequestMapping("/insert")
    public String insert(@ModelAttribute Employee employee, Model model) {
        if (es.insert(employee)) model.addAttribute("msg", "插入成功");
        else model.addAttribute("msg", "插入失败");
        model.addAttribute("store", new Store());
        model.addAttribute("employee", new Employee());
        return "administer";
    }
}
