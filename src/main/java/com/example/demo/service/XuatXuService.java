package com.example.demo.service;

import com.example.demo.model.Size;
import com.example.demo.model.XuatXu;

import java.util.List;
import java.util.UUID;

public interface XuatXuService {
    void deletexuatxu(UUID id);


    XuatXu addxuatxu(XuatXu xuatXu);
   XuatXu update(XuatXu xuatXu);

    XuatXu detail(UUID id);

    List<XuatXu> getAll();

}
