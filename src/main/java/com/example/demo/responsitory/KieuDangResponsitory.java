package com.example.demo.responsitory;

import com.example.demo.model.KieuDang;
import com.example.demo.model.Size;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface KieuDangResponsitory extends JpaRepository<KieuDang, UUID> {
    @Modifying
    @Transactional
    @Query(value = "update form set status_= 0 where Id= :idForm", nativeQuery = true)
    void deleteForm(@Param("idForm") UUID idForm);
}
