package com.example.demo.service;

import com.example.demo.model.Product;
import com.example.demo.model.ProductDetail;
import com.example.demo.request.SanPhamRequest;

import java.util.List;
import java.util.UUID;

public interface ProductdetailService {
    List<ProductDetail> getAll();
    boolean createProducts(SanPhamRequest request);
}
