package com.example.demo.service.impl;

import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.IXuatXuReponsitory;
import com.example.demo.service.XuatXuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class IXuatXuService implements XuatXuService {
@Autowired
    IXuatXuReponsitory xuatXuReponsitory;

    @Override
    public void deletexuatxu(UUID id) {
        xuatXuReponsitory.deleteById(id);
    }

    @Override
    public void adddxuatxu(XuatXu xuatXu) {
xuatXuReponsitory.save(xuatXu);
    }

    @Override
    public void update(UUID id, XuatXu xuatXu) {
    XuatXu xuatXu1 = xuatXuReponsitory.findById(id).get();

        xuatXu1.setName_(xuatXu.getName_());
        xuatXu1.setStatus_(xuatXu.getStatus_());
        xuatXuReponsitory.save(xuatXu);
    }

    @Override
    public XuatXu detail(UUID id) {
        return xuatXuReponsitory.findById(id).get();
    }

    @Override
    public List<XuatXu> getAll() {
        return xuatXuReponsitory.findAll();
    }
}

