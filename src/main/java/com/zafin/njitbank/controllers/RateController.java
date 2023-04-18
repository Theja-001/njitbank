package com.zafin.njitbank.controllers;

import com.zafin.njitbank.entities.Rate;
import com.zafin.njitbank.repository.RateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RateController {
    @Autowired
    private RateRepository rateRepository;
    @RequestMapping("/addrate")
    public String showRatePage(){
        return "/login/rate-page";

    }
    @RequestMapping(value="createRate", method = RequestMethod.POST)
    public String createRate(@ModelAttribute("rate") Rate rate){
        rateRepository.save(rate);

        return "";

    }
//

}
