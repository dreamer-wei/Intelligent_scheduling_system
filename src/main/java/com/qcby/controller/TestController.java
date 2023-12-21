
package com.qcby.controller;

import com.qcby.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/test")
public class TestController {
    @RequestMapping("/administer")
    public String admin(Model model) {
        return "administer";
    }

    @RequestMapping("/employee")
    public String employee(Model model, HttpSession session) {
        User u = new User();
        u.setUserID(123456);
        u.setUserName("123456");
        session.setAttribute("user", u);
        return "employee";
    }

    @RequestMapping("/storeAdidas")
    public String storeAdidas(Model model) {
        return "storeAdidas";
    }

    @RequestMapping("/storeLiNing")
    public String storeLiNing(Model model) {
        return "storeLiNing";
    }

    @RequestMapping("/storeNike")
    public String storeNike(Model model) {
        return "storeNike";
    }
}