package com.example.demo.service.impl;

import com.example.demo.responsitory.IXuatXuReponsitory;
import com.example.demo.service.XuatXuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IXuatXuService implements XuatXuService {
@Autowired
    IXuatXuReponsitory xuatXuReponsitory;
    @Override
    public void deletexuatxu(Integer id) {
xuatXuReponsitory.deleteById(id);
    }
}
