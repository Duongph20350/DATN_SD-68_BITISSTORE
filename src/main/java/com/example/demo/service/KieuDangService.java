package com.example.demo.service;

import com.example.demo.model.KieuDang;

import java.util.List;
import java.util.UUID;

public interface KieuDangService {
    List<KieuDang>getAll();
    void add(KieuDang kd);
    void delete(UUID id);

}
