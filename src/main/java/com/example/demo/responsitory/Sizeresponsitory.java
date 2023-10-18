package com.example.demo.responsitory;

import com.example.demo.model.Size;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.UUID;

public interface Sizeresponsitory extends JpaRepository<Size, UUID> {
    @Modifying
    @Transactional
    @Query(value = "update size set status_= 0 where Id= :idSize", nativeQuery = true)
    void deleteSize(@Param("idSize") UUID idSize);
}
