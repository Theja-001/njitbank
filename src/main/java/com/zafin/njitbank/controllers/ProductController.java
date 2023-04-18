package com.zafin.njitbank.controllers;


import com.zafin.njitbank.entities.IdGenerator;
import com.zafin.njitbank.entities.Product;
import com.zafin.njitbank.entities.Service;
import com.zafin.njitbank.repositories.ProductRepository;
import com.zafin.njitbank.repositories.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController extends IdGenerator  {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    ServiceRepository serviceRepository;
    IdGenerator idGenerator;
    @RequestMapping("create-product")
    public String showCreateProduct(ModelMap modelMap){
        List<Service> serviceList= serviceRepository.findAll();
        modelMap.addAttribute("services", serviceList);
        System.out.println(serviceList);
        return "login/create-product";
    }
    @RequestMapping("/edit-product")
    public String showEditProduct(){
        return "login/edit-product";
    }
    @RequestMapping(value="saveProduct" , method = RequestMethod.POST)
    public String saveProduct(@ModelAttribute("product") Product product,@ModelAttribute("serviceCode") String serviceCode){



       Service service=serviceRepository.findById(serviceCode).get();
     product.setService(service);
        System.out.println("%%%%");
        System.out.println(product.getService());
        String productCode= generateId("PT");

       product.setProductCode(productCode);
       if(productCode==" "){
           product.setProductCode("PT001");
       }
//        System.out.println(service.getServiceCode());
//        System.out.println();
        productRepository.save(product);

        return  "redirect:/admin";
    }


}
