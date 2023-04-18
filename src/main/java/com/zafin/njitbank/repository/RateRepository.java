package com.zafin.njitbank.repository;

import com.zafin.njitbank.entities.Rate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RateRepository extends JpaRepository<Rate,Long> {




}
