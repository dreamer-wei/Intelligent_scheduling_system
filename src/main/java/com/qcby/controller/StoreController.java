package com.qcby.controller;

import com.qcby.model.Employee;
import com.qcby.model.Store;
import com.qcby.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store")
public class StoreController {
    @Autowired
    private StoreService ss;

    @RequestMapping("/insert")
    public String insert(@ModelAttribute Store store, Model model) {
        if (ss.insert(store)) model.addAttribute("msg", "插入成功");
        else model.addAttribute("msg", "插入失败");
        model.addAttribute("store", new Store());
        model.addAttribute("employee", new Employee());
        return "administer";
    }

    @RequestMapping("/update")
    public String update(@ModelAttribute Store store, Model model) {
        if (ss.update(store)) model.addAttribute("msg", "修改成功");
        else model.addAttribute("msg", "修改失败");
        model.addAttribute("store", new Store());
        model.addAttribute("employee", new Employee());
        return "administer";
    }
}
