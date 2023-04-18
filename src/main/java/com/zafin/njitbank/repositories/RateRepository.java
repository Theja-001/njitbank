package com.zafin.njitbank.repositories;

import com.zafin.njitbank.entities.Product;
import com.zafin.njitbank.entities.Rate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface RateRepository extends JpaRepository<Rate, String> {
    @Query("SELECT r.rateCode FROM Rate r ORDER BY r.id DESC LIMIT 1")
    String getId();
}
