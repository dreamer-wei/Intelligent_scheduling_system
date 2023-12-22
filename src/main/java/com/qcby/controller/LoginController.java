package com.qcby.controller;

import com.qcby.model.*;
import com.qcby.service.ClassRuleService;
import com.qcby.service.EmployeeService;
import com.qcby.service.StoreService;
import com.qcby.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private UserService us;
    @Autowired
    private StoreService ss;
    @Autowired
    private ClassRuleService crs;

    @Autowired
    private EmployeeService es;
    @RequestMapping("/submit")
    public String submit(Model model) {
        // 向模型中添加属性msg与值，可以在html页面中取出并渲染
        model.addAttribute("user", new User());
        // 配置了视图解析器后，写法
        return "login";
    }

    @RequestMapping("/handle")
    public String handle(@ModelAttribute User user, Model model, HttpSession session) {
        if (us.Login(user, session))
            if (user.getUserType() == 1) return "employee";
            else {
                model.addAttribute("store", new Store());
                model.addAttribute("employee", new Employee());
                model.addAttribute("employeePreference", new EmployeePreference());
                model.addAttribute("classRule", new ClassRule());
                session.setAttribute("EmployeeNum", ss.QueryEmployeeNum());
                session.setAttribute("RuleQuery", crs.QueryAll());
                return "administer";
            }
        model.addAttribute("user", new User());
        return "login";
    }
}