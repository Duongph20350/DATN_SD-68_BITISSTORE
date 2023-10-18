package com.example.demo.service;

import com.example.demo.model.KieuDang;
import com.example.demo.model.Size;

import java.util.List;
import java.util.UUID;

public interface KieuDangService {
    void deleteForm(UUID id);
    List<KieuDang> getAllForm();

    KieuDang addForm(KieuDang kieuDang);

    KieuDang updateForm(KieuDang kieuDang);
    KieuDang detailForm(UUID id);
}
