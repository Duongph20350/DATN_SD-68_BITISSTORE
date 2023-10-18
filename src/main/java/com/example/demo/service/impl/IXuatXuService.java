package com.example.demo.service.impl;

import com.example.demo.model.Size;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.IXuatXuReponsitory;
import com.example.demo.service.XuatXuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class IXuatXuService implements XuatXuService {
    private final long date = System.currentTimeMillis();
    private final Date dateNow = new Date(date);
    @Autowired
    IXuatXuReponsitory xuatXuReponsitory;

    @Override
    public void deletexuatxu(UUID id) {
        xuatXuReponsitory.deleteById(id);
    }

    @Override
    public XuatXu addxuatxu(XuatXu xuatXu) {
        XuatXu newXuatXu1 = new XuatXu().builder()
                .name_(xuatXu.getName_())
                .create_by(xuatXu.getCreate_by())
                .create_date(dateNow)
                .last_modifeed_date(dateNow)
                .status_(xuatXu.getStatus_())
                .build();

        return xuatXuReponsitory.save(newXuatXu1);
    }

    @Override
    public XuatXu update(XuatXu xuatXu) {
        XuatXu updateS = xuatXuReponsitory.findById(xuatXu.getId()).orElse(null).builder()
                .id(xuatXu.getId())
                .name_(xuatXu.getName_())
                .create_by(xuatXu.getCreate_by())
                .create_date(xuatXu.getCreate_date())
                .last_modifeed_date(dateNow)
                .status_(xuatXu.getStatus_())
                .build();
        return xuatXuReponsitory.save(updateS);
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

