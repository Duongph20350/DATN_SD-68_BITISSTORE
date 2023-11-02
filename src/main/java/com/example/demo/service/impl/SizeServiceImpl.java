package com.example.demo.service.impl;

import com.example.demo.model.Size;
import com.example.demo.responsitory.IXuatXuReponsitory;
import com.example.demo.responsitory.Sizeresponsitory;
import com.example.demo.service.SizeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class SizeServiceImpl implements SizeService {
    private final long date = System.currentTimeMillis();
    private final Date dateNow = new Date(date);
    @Autowired
    Sizeresponsitory sizeresponsitory;

    @Override
    public void deleteSize(UUID id) {
        Optional<Size> indexSize = sizeresponsitory.findById(id);
        if(indexSize.isPresent()){
            sizeresponsitory.deleteSize(id);
        }
    }

    @Override
    public List<Size> getAllSize() {
        return sizeresponsitory.findAll();
    }

    @Override
    public Size addSize(Size size) {
        Size newSize = new Size().builder()
                .name_(size.getName_())
                .create_by(size.getCreate_by())
                .create_date(dateNow)
                .last_modifeed_date(dateNow)
                .status_(size.getStatus_())
                .build();
        return sizeresponsitory.save(newSize);
    }

    @Override
    public Size updateSize(Size size) {
        Size updateS = sizeresponsitory.findById(size.getId()).orElse(null).builder()
                .id(size.getId())
                .name_(size.getName_())
                .create_by(size.getCreate_by())
                .create_date(size.getCreate_date())
                .last_modifeed_date(dateNow)
                .status_(size.getStatus_())
                .build();
        return sizeresponsitory.save(updateS);
    }

    @Override
    public Size detailSize(UUID id) {
        return sizeresponsitory.findById(id).orElse(null);
    }

}
