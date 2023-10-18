package com.example.demo.service;

import com.example.demo.model.Category;
import com.example.demo.model.Size;
import com.example.demo.model.XuatXu;

import java.util.List;
import java.util.UUID;

public interface CategoryService {
    void deletecategory(UUID id);

     Category addcategory(Category category);

    Category updatecategory(Category category);

    Category detail(UUID id);

    List<Category> getAll();
}
