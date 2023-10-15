package com.example.demo.responsitory;

import com.example.demo.model.XuatXu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface IXuatXuReponsitory  extends JpaRepository<XuatXu,Integer> {

}
