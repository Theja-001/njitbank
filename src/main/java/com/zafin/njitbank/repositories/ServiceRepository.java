package com.zafin.njitbank.repositories;

import com.zafin.njitbank.entities.Service;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ServiceRepository extends JpaRepository<Service, String> {
    @Query("SELECT s.serviceCode FROM Service s ORDER BY s.id DESC LIMIT 1")
    String getId();
    @Query("FROM Service s WHERE s.serviceName = :serviceName")
    Service findService(@Param("serviceName") String serviceName);
    Service findByServiceCode(String serviceCode);

}
