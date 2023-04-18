package com.zafin.njitbank.entities;

import jakarta.persistence.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "service")
public class Service{


    public Rate getRate() {
        return rate;
    }

    public void setRate(Rate rate) {
        this.rate = rate;
    }

    @Id
    @Column(name="service_code")
    private String serviceCode;

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }


    @Override
    public String toString() {
        return serviceName;
    }

    @Column(name="service_name")
    private String serviceName;
    @Column(name="service_description")
    private String serviceDescription;
    @Column(name="service_owner")
    private String serviceOwner;
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
    @Column(name="service_level_rates")
    private double serviceLevelRates;

//    public Rate getRate() {
//        return rate;
//    }
//
//    public void setRate(Rate rate) {
//        this.rate = rate;
//    }

    //    @Column(name = "rate_code")
//    private String rateCode;
    @ManyToOne
    @JoinColumn(name = "rate_code")
    private Rate rate;

    @OneToMany(mappedBy = "service")
    private List<Product> products;



    public String getServiceCode() {
        return serviceCode;
    }

    public void setServiceCode(String serviceCode) {
        this.serviceCode = serviceCode;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public String getServiceOwner() {
        return serviceOwner;
    }

    public void setServiceOwner(String serviceOwner) {
        this.serviceOwner = serviceOwner;
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

    public double getServiceLevelRates() {
        return serviceLevelRates;
    }

    public void setServiceLevelRates(double serviceLevelRates) {
        this.serviceLevelRates = serviceLevelRates;
    }











}
