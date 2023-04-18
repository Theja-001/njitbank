package com.zafin.njitbank.repositories;

import com.zafin.njitbank.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProductRepository extends JpaRepository<Product, Long> {
    @Query("SELECT p.productCode FROM Product p ORDER BY p.id DESC LIMIT 1")
    String getId();
}
