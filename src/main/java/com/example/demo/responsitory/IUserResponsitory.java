package com.example.demo.responsitory;

import com.example.demo.model.User;
import jakarta.transaction.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.UUID;

public interface IUserResponsitory extends JpaRepository<User, UUID> {
//    Page<User> findfull_nameContains(String keyword, Pageable pageable);
@Modifying
@Transactional
@Query(value = "update account set status_= 0 where Id= :idAccount", nativeQuery = true)
void deleteUser(@Param("idAccount") UUID idUser);
}
