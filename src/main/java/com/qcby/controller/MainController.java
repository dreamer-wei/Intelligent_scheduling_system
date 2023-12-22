package com.qcby.controller;

import com.qcby.model.Store;
import com.qcby.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
//@RequestMapping("/main")
public class MainController {
    @Autowired
    private StoreService ss;

    @RequestMapping("/index")
    public String ToMain() {
        return "index";
    }

    @RequestMapping("/storeAdidas")
    public String Toad(HttpSession session) {
        List<Store> ls = ss.QueryStoreInfo(1);
        session.setAttribute("Store", ls.get(0));
        return "storeAdidas";
    }

    @RequestMapping("/storeNike")
    public String Tonk(HttpSession session) {
        List<Store> ls = ss.QueryStoreInfo(2);
        session.setAttribute("Store", ls.get(0));
        return "storeNike";
    }

    @RequestMapping("/storeLiNing")
    public String Toln(HttpSession session) {
        List<Store> ls = ss.QueryStoreInfo(3);
        session.setAttribute("Store", ls.get(0));
        return "storeLiNing";
    }
}