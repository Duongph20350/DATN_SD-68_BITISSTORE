package com.example.demo.responsitory;

import com.example.demo.model.Product;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface IproductResponsitory extends JpaRepository<Product, UUID> {
    @Modifying
    @Transactional
    @Query(value = "update product set status_= 0 where Id= :idProduct", nativeQuery = true)
    void deleteProduct(@Param("idProduct") UUID idProduct);



}
