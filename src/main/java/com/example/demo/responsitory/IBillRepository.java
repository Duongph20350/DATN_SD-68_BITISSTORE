package com.example.demo.responsitory;

import com.example.demo.model.Bill;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;
@Repository
public interface IBillRepository extends JpaRepository<Bill, UUID> {
    Page<Bill> findByuserNames(String keyword, Pageable pageable);
    @Query(nativeQuery = true, value =
            "SELECT bill.*, account.full_name AS account_full_name, account.phone_number AS account_phone_number " +
                    "FROM bill " +
                    "INNER JOIN account ON bill.id_user = account.id")
    List<Bill> findBillAccountData();


}
