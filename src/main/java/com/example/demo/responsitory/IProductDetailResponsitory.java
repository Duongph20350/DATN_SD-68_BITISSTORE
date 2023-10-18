package com.example.demo.responsitory;

import com.example.demo.model.ProductDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface IProductDetailResponsitory extends JpaRepository<ProductDetail, UUID> {
}
