package com.zafin.njitbank.entities;

import jakarta.persistence.Entity;

import java.util.Date;

public class Product{
    private String productCode;
    private String productName;
    private String productDescription;
    private String productOwner;
    private Date openingDate;
    private Date validityDate;
    private Date expiryDate;
    private String currency;
    private double productLevelRates;
    Service service;


}
