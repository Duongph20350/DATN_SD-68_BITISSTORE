package com.example.demo.service;

import com.example.demo.model.XuatXu;

import java.util.List;
import java.util.UUID;

public interface XuatXuService {
    void deletexuatxu(UUID id);
    void adddxuatxu(XuatXu xuatXu);
    void update(UUID id, XuatXu xuatXu);
    XuatXu detail(UUID id);
    List<XuatXu> getAll();
}
