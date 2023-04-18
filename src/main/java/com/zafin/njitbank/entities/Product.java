package com.zafin.njitbank.entities;

import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "product")
public class Product{
    @Id
    @Column(name="product_code")
    private String productCode;
    @Column(name="product_name")
    private String productName;
    @Column(name="product_description")
    private String productDescription;
    @Column(name="product_owner")
    private String productOwner;
    @Column(name="opening_date")
    @DateTimeFormat(pattern = "dd/mm/yyyy")
    @Temporal(TemporalType.DATE)
    private Date openingDate;
    @Column(name="validity_date")
    @DateTimeFormat(pattern = "dd/mm/yyyy")
    @Temporal(TemporalType.DATE)
    private Date validityDate;
    @Column(name="expiry_date")
    @DateTimeFormat(pattern = "dd/mm/yyyy")
    @Temporal(TemporalType.DATE)
    private Date expiryDate;
    @Column(name="currency")
    private String currency;
    @Column(name="product_level_rates")
    private double productLevelRates;

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }
//    public List<Service> getServices() {
//        return services;
//    }
//
//    public void setServices(List<Service> services) {
//        this.services = services;
//    }

    //    @Column(name="service_code")
//    private String serviceCode;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "service_code")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Service service;

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductOwner() {
        return productOwner;
    }

    public void setProductOwner(String productOwner) {
        this.productOwner = productOwner;
    }

    public Date getOpeningDate() {
        return openingDate;
    }

    public void setOpeningDate(Date openingDate) {
        this.openingDate = openingDate;
    }

    public Date getValidityDate() {
        return validityDate;
    }

    public void setValidityDate(Date validityDate) {
        this.validityDate = validityDate;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

//    public String getServiceCode() {
//        return serviceCode;
//    }
//
//    public void setServiceCode(String serviceCode) {
//        this.serviceCode = serviceCode;
//    }

    public double getProductLevelRates() {
        return productLevelRates;
    }

    public void setProductLevelRates(double productLevelRates) {
        this.productLevelRates = productLevelRates;
    }
}
