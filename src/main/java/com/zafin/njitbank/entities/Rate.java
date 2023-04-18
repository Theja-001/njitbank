package com.zafin.njitbank.entities;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name="rate")
public class Rate {
    @Id
    private String rateCode;
    @Column(name = "rate_description")
    private String rateDescription;
    @Column(name = "rate_type")
    private String rateType;
    @Column(name = "charge_quantity_rate")
    private int chargeQuantityRate;

    public int getChargeQuantityRate() {
        return chargeQuantityRate;
    }

    public void setChargeQuantityRate(int chargeQuantityRate) {
        this.chargeQuantityRate = chargeQuantityRate;
    }

    public String getPricingMethodology() {
        return pricingMethodology;
    }

    public void setPricingMethodology(String pricingMethodology) {
        this.pricingMethodology = pricingMethodology;
    }

    @Column(name = "pricing_methodology")
    private String pricingMethodology;
    private int[] min;
    private int[] max;

    public String getRateCode() {
        return rateCode;
    }

    public void setRateCode(String rateCode) {
        this.rateCode = rateCode;
    }

    public String getRateDescription() {
        return rateDescription;
    }

    public void setRateDescription(String rateDescription) {
        this.rateDescription = rateDescription;
    }

    public String getRateType() {
        return rateType;
    }

    public void setRateType(String rateType) {
        this.rateType = rateType;
    }

    public int[] getMin() {
        return min;
    }

    public void setMin(int[] min) {
        this.min = min;
    }

    public int[] getMax() {
        return max;
    }

    public void setMax(int[] max) {
        this.max = max;
    }




    @OneToMany(mappedBy = "rate")
    private List<Service> services;



}
