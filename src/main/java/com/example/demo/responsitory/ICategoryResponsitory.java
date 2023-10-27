package com.example.demo.responsitory;

import com.example.demo.model.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import java.util.UUID;
@Repository
public interface ICategoryResponsitory extends JpaRepository<Category , UUID> {
    Page<Category> findByName(String keyword, Pageable pageable);

}
