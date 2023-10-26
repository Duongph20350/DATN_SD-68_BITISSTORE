package com.example.demo.service;

import com.example.demo.model.Product;
import com.example.demo.model.Size;
import com.example.demo.model.XuatXu;

import java.util.List;
import java.util.UUID;

public interface ProductService {


    Product addpr(Product product);

    Product updatepr(Product product);

    Product detail(UUID id);

    List<Product> getAll();
    void deleteProduct(UUID id);
}
