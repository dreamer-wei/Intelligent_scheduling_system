package com.qcby.controller;

import com.qcby.model.ClassRule;
import com.qcby.model.Employee;
import com.qcby.model.EmployeePreference;
import com.qcby.model.Store;
import com.qcby.service.ClassRuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/classRule")
public class ClassRuleController {
    @Autowired
    private ClassRuleService crs;

    @RequestMapping("/insert")
    public String insert(@ModelAttribute ClassRule classRule, Model model) {
        if (crs.insert(classRule)) model.addAttribute("msg", "导入成功");
        else model.addAttribute("msg", "导入失败");
        model.addAttribute("store", new Store());
        model.addAttribute("employee", new Employee());
        model.addAttribute("employeePreference", new EmployeePreference());
        model.addAttribute("classRule", new ClassRule());
        return "administer";
    }

    @RequestMapping("/update")
    public String update(@ModelAttribute ClassRule classRule, Model model) {
        if (crs.update(classRule)) model.addAttribute("msg", "修改成功");
        else model.addAttribute("msg", "修改失败");
        model.addAttribute("store", new Store());
        model.addAttribute("employee", new Employee());
        model.addAttribute("employeePreference", new EmployeePreference());
        model.addAttribute("classRule", new ClassRule());
        return "administer";
    }

    @RequestMapping("/delete")
    public String delete(@ModelAttribute ClassRule classRule, Model model) {
        if (crs.delete(classRule)) model.addAttribute("msg", "删除成功");
        else model.addAttribute("msg", "删除失败");
        model.addAttribute("store", new Store());
        model.addAttribute("employee", new Employee());
        model.addAttribute("employeePreference", new EmployeePreference());
        model.addAttribute("classRule", new ClassRule());
        return "administer";
    }
}
