package com.zafin.njitbank.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class RateController {
    @RequestMapping("/addrate")
    public String showRatePage(){
        return "/login/rate-page";

    }

}
