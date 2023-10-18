package com.example.demo.responsitory;

import com.example.demo.model.MauSac;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;
@Repository
public interface IMauSacRepository extends JpaRepository<MauSac, UUID> {
    @Query("SELECT obj FROM MauSac obj WHERE obj.id = ?1")
    public MauSac findByMa(UUID id);
    @Modifying
    @Transactional
    @Query(value = "update MauSac set status_= 0 where Id= :idMS", nativeQuery = true)
    void deleteMauSac(@Param("idMS") UUID idMS);
}
