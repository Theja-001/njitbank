package com.zafin.njitbank.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Login {

    @RequestMapping("/homepage")
    public String showBankHomePage(){
        return "login/homepage";
    }
    @RequestMapping("/user")
    public String showUserPage(){
        return "login/user";
    }
    @RequestMapping("/admin")
    public String showAdminPage(){
        return "login/admin";
    }
}
