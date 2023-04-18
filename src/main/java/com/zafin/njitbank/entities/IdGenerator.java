package com.zafin.njitbank.entities;

import com.zafin.njitbank.repositories.ProductRepository;
import com.zafin.njitbank.repositories.RateRepository;
import com.zafin.njitbank.repositories.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


public  class  IdGenerator {

@Autowired
ProductRepository productRepository;
        @Autowired
    ServiceRepository serviceRepository;
        @Autowired
    RateRepository rateRepository;

        public  String generateId(String type) {
              String PREFIX = "CODE-";

            String latestCode=" ";



            switch (type) {
                case "SC": PREFIX="SC";
                    System.out.println("ACC");
                    latestCode= serviceRepository.getId();
                            break;
                case "RA": PREFIX="RA";
                    System.out.println("RA");
                    latestCode= rateRepository.getId();
                    break;
                case "PT": PREFIX="PT";
                    System.out.println("PT");
                    latestCode= productRepository.getId();
                    if (latestCode==" "){
                        latestCode="PT001";
                    }
                    System.out.println(latestCode);
                    break;
                default:System.out.println("Nothing worked");
                break;
            }
            Pattern pattern = Pattern.compile("\\d+$");
            Matcher matcher = pattern.matcher(latestCode);
            int suffix = matcher.find() ? Integer.parseInt(matcher.group()) : 0;
            int nextSuffix = suffix + 1;
            return PREFIX + String.format("%03d", nextSuffix);
        }
    }


