package com.zafin.njitbank.controllers;

import com.zafin.njitbank.entities.IdGenerator;
import com.zafin.njitbank.entities.Product;
import com.zafin.njitbank.entities.Rate;
import com.zafin.njitbank.entities.Service;
import com.zafin.njitbank.repositories.RateRepository;
import com.zafin.njitbank.repositories.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ServiceController extends IdGenerator {
    @Autowired
    RateRepository rateRepository;
    @Autowired
    ServiceRepository serviceRepository;
    @RequestMapping("createService")
    public String showCreateProduct(ModelMap modelMap){
        List<Rate> rateList= rateRepository.findAll();
        modelMap.addAttribute("rates", rateList);
        System.out.println(rateList);
        return "login/createService";
    }

    @RequestMapping(value="saveService" , method = RequestMethod.POST)
    public String saveProduct(@ModelAttribute("service") Service service, @ModelAttribute("rateCode") String rateCode){
        String serviceCode= generateId("SC");
        service.setServiceCode(serviceCode);
        if(serviceCode==" "){
            service.setServiceCode("SC001");
        }
        Rate rate=rateRepository.findById(rateCode).get();
        service.setRate(rate);
        serviceRepository.save(service);
        return  "redirect:/admin";
    }


    }
