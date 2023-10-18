package com.example.demo.service.impl;

import com.example.demo.model.Category;
import com.example.demo.model.Size;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.ICategoryResponsitory;
import com.example.demo.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class ICategoryService implements CategoryService {
    private final long date = System.currentTimeMillis();
    private final Date dateNow = new Date(date);
    @Autowired
    ICategoryResponsitory categoryResponsitory;

    @Override
    public void deletecategory(UUID id) {
        categoryResponsitory.deleteById(id);
    }

    @Override
    public Category addcategory(Category category) {

        Category category1= new Category().builder()
                .name_(category.getName_())
                .create_by(category.getCreate_by())
                .create_date(dateNow)
                .last_modifeed_date(dateNow)
                .status_(category.getStatus_())
                .build();
        return categoryResponsitory.save(category);
    }

    @Override
    public Category updatecategory(Category category) {
        Category updateCategory1 = categoryResponsitory.findById(category.getId()).orElse(null).builder()
                .id(category.getId())
                .name_(category.getName_())
                .create_by(category.getCreate_by())
                .create_date(category.getCreate_date())
                .last_modifeed_date(dateNow)
                .status_(category.getStatus_())
                .build();
        return categoryResponsitory.save(updateCategory1);
    }


    @Override
    public Category detail(UUID id) {
        return categoryResponsitory.findById(id).get();
    }

    @Override
    public List<Category> getAll() {
        return categoryResponsitory.findAll();
    }
}
