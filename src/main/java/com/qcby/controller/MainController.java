package com.qcby.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/main")
public class MainController {
    @RequestMapping("/index")
    public String ToMain() {
        return "index";
    }

    @RequestMapping("/storeAdidas")
    public String Toad() {
        return "storeAdidas";
    }

    @RequestMapping("/storeNike")
    public String Tonk() {
        return "storeNike";
    }

    @RequestMapping("/storeLiNing")
    public String Toln() {
        return "storeLiNing";
    }
}
