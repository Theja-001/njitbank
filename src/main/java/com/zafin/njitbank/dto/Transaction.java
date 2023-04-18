package com.zafin.njitbank.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Transaction {
    @Id
    private String transactionCode;
    private String customerId;
    private String accountNo;
    private String productCode;
    private String serviceCode;
    private int volume;
    private int value;
    private String transactionDate;

    public String getTransactionCode() {
        return transactionCode;
    }

    public void setTransactionCode(String transactionCode) {
        this.transactionCode = transactionCode;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getServiceCode() {
        return serviceCode;
    }

    public void setServiceCode(String serviceCode) {
        this.serviceCode = serviceCode;
    }

    public int getVolume() {
        return volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(String transactionDate) {
        this.transactionDate = transactionDate;
    }

    public String getProcessDate() {
        return processDate;
    }

    public void setProcessDate(String processDate) {
        this.processDate = processDate;
    }

    private String processDate;


}
