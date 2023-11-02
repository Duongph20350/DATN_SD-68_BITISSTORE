package com.example.demo.service.impl;

import com.example.demo.model.Product;
import com.example.demo.model.Size;
import com.example.demo.model.User;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.IProductDetailResponsitory;
import com.example.demo.responsitory.IproductResponsitory;
import com.example.demo.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class IProductServicee implements ProductService {
    @Autowired
    IproductResponsitory iproductResponsitory;

    @Autowired
    IProductDetailResponsitory productDetailResponsitory;



    @Override
    public Product addpr(Product product) {
        Product newProduct1 = new Product().builder()
                .name_(product.getName_())
                .status_(product.getStatus_())
                .build();
        return iproductResponsitory.save(newProduct1);
    }



    @Override
    public Product updatepr(Product product) {
        Product product1 = iproductResponsitory.findById(product.getId()).orElse(null).builder()
                .id(product.getId())
                .name_(product.getName_())

                .status_(product.getStatus_())
                .build();
        return iproductResponsitory.save(product);

    }


    @Override
    public Product detail(UUID id) {
        return iproductResponsitory.findById(id).get();
    }

    @Override
    public List<Product> getAll() {
        return iproductResponsitory.findAll();
    }

    @Override
    public void deleteProduct(UUID id) {
        Optional<Product> indexProduct = iproductResponsitory.findById(id);
        if(indexProduct.isPresent()){
            iproductResponsitory.deleteProduct(id);
        }
    }
}
