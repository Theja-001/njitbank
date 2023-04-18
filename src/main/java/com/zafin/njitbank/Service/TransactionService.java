package com.zafin.njitbank.Service;

import com.zafin.njitbank.dto.Transaction;

public interface TransactionService{

    void calculatePrice(Transaction transaction);
}
