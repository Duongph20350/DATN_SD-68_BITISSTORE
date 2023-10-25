package com.example.demo.responsitory;

import com.example.demo.model.Size;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;
@Repository
public interface Sizeresponsitory extends JpaRepository<Size, UUID> {
    @Modifying
    @Transactional
    @Query(value = "update size set status_= 0 where Id= :idSize", nativeQuery = true)
    void deleteSize(@Param("idSize") UUID idSize);
}
