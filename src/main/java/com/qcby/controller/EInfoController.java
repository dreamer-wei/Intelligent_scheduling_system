package com.qcby.controller;

import com.qcby.model.User;
import com.qcby.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/EInfo")
public class EInfoController {
    @Autowired
    private UserService us;

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("msg", "");
        return "register";
    }

    @RequestMapping("/insert")
    public String insert(@ModelAttribute User user, Model model) {
        if (us.insert(user)) model.addAttribute("msg", "注册成功");
        else model.addAttribute("msg", "注册失败");
        model.addAttribute("user", new User());
        return "register";
    }
}
