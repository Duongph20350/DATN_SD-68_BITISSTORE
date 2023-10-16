package com.example.demo.service.impl;

import com.example.demo.model.KieuDang;
import com.example.demo.responsitory.IKieuDangReponsitory;
import com.example.demo.service.KieuDangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class IKieuDangService implements KieuDangService {
    @Autowired
    IKieuDangReponsitory kieuDangRepo;

    @Override
    public List<KieuDang> getAll() {
        return kieuDangRepo.findAll();
    }

    @Override
    public void add(KieuDang kd) {
        kieuDangRepo.save(kd);

    }

    @Override
    public void delete(UUID id) {

    }




}
