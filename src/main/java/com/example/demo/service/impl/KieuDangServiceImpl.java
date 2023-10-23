package com.example.demo.service.impl;

import com.example.demo.model.KieuDang;
import com.example.demo.model.Size;
import com.example.demo.responsitory.KieuDangResponsitory;
import com.example.demo.responsitory.Sizeresponsitory;
import com.example.demo.service.KieuDangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
@Service

public class KieuDangServiceImpl implements KieuDangService {
    private final long date = System.currentTimeMillis();
    private final Date dateNow = new Date(date);
    @Autowired
    KieuDangResponsitory kieuDangResponsitory;
    @Override
    public void deleteForm(UUID id) {
        Optional<KieuDang> indexForm = kieuDangResponsitory.findById(id);
        if(indexForm.isPresent()){
            kieuDangResponsitory.deleteForm(id);
        }
    }

    @Override
    public List<KieuDang> getAllForm() {
        return null;
    }

    @Override
    public KieuDang addForm(KieuDang kieuDang) {

        KieuDang newForm = new KieuDang().builder()
                .name(kieuDang.getName())
                .create_by(kieuDang.getCreate_by())
                .create_date(dateNow)
                .last_modifeed_date(dateNow)
                .status_(kieuDang.getStatus_())
                .build();
        return kieuDangResponsitory.save(newForm);
    }

    @Override
    public KieuDang updateForm(KieuDang kieuDang) {
        KieuDang updateForm = kieuDangResponsitory.findById(kieuDang.getId()).orElse(null).builder()
                .id(kieuDang.getId())
                .name(kieuDang.getName())
                .create_by(kieuDang.getCreate_by())
                .create_date(kieuDang.getCreate_date())
                .last_modifeed_date(dateNow)
                .status_(kieuDang.getStatus_())
                .build();
        return kieuDangResponsitory.save(updateForm);
    }

    @Override
    public KieuDang detailForm(UUID id) {
        return kieuDangResponsitory.findById(id).orElse(null);
    }
}
