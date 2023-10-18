package com.example.demo.service.impl;

import com.example.demo.model.Product;
import com.example.demo.model.ProductDetail;
import com.example.demo.responsitory.IProductDetailResponsitory;
import com.example.demo.service.ProductdetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IProductDetaiService implements ProductdetailService {
    @Autowired
    IProductDetailResponsitory productDetailResponsitory;
    @Override
    public List<ProductDetail> getAll() {
        return productDetailResponsitory.findAll() ;
    }
}
