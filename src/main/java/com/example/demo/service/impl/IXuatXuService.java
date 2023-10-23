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
<<<<<<< Updated upstream
    public void deletexuatxu(Integer id) {
xuatXuReponsitory.deleteById(id);
=======
    public void deletexuatxu(UUID id) {
        xuatXuReponsitory.deleteById(id);
    }

    @Override
    public XuatXu addxuatxu(XuatXu xuatXu) {
        XuatXu newXuatXu1 = new XuatXu().builder()
                .name(xuatXu.getName())
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
                .name(xuatXu.getName())
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
>>>>>>> Stashed changes
    }
}
