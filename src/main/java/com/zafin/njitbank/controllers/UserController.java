package com.zafin.njitbank.controllers;

import com.zafin.njitbank.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class UserController {
    @RequestMapping("/showReg")
    public String showRegistrationPage(){
        return "login/RegisterUser";
    }
    @RequestMapping(value = "registerUser", method = RequestMethod.POST)
    public String register(@ModelAttribute("user") User user){
        //userRepository.save(user);
        return "login/login";
    }
    @RequestMapping(value = "login")
    public String showFindFlightsPage()
    {
        return "login/homepage";
    }
}
