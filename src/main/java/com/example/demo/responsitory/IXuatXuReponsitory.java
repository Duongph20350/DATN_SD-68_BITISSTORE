package com.example.demo.responsitory;

import com.example.demo.model.XuatXu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

<<<<<<< Updated upstream
public interface IXuatXuReponsitory  extends JpaRepository<XuatXu,Integer> {
=======
public interface IXuatXuReponsitory  extends JpaRepository<XuatXu,UUID> {
    Page<XuatXu> findByName(String keyword, Pageable pageable);

>>>>>>> Stashed changes

}
