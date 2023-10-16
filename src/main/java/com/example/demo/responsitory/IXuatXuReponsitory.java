package com.example.demo.responsitory;

import com.example.demo.model.XuatXu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository

public interface IXuatXuReponsitory  extends JpaRepository<XuatXu,UUID> {
//    Page<XuatXu> findByTenContains(String keyword, Pageable pageable);
}
