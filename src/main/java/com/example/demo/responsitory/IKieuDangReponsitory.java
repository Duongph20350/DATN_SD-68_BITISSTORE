package com.example.demo.responsitory;

import com.example.demo.model.KieuDang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface IKieuDangReponsitory extends JpaRepository<KieuDang,UUID> {
}
