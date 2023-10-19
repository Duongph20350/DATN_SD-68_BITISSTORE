package com.example.demo.service.impl;

import com.example.demo.model.MauSac;
import com.example.demo.responsitory.IMauSacRepository;
import com.example.demo.service.MauSacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class MauSacServiceImpl implements MauSacService {
    private final long date = System.currentTimeMillis();
    private final Date dateNow = new Date(date);
  @Autowired
     IMauSacRepository mauSacRepository;

    @Override
    public void delete(UUID id) {
        Optional<MauSac> indexMS = mauSacRepository.findById(id);
        if(indexMS.isPresent()){
            mauSacRepository.deleteMauSac(id);
        }
    }

    @Override
    public List<MauSac> getAllMS() {
        return mauSacRepository.findAll();
    }

    @Override
    public MauSac addMS(MauSac mauSac) {
        MauSac mauSac1 = new MauSac().builder()
                .name_(mauSac.getName_())
                .create_by(mauSac.getCreate_by())
                .create_date(dateNow)
                .last_modifeed_date(dateNow)
                .status_(mauSac.getStatus_())
                .build();
        return mauSacRepository.save(mauSac1);
    }

    @Override
    public MauSac updateMS(MauSac mauSac) {
        MauSac updateS = mauSacRepository.findById(mauSac.getId()).orElse(null).builder()
                .id(mauSac.getId())
                .name_(mauSac.getName_())
                .create_by(mauSac.getCreate_by())
                .create_date(mauSac.getCreate_date())
                .last_modifeed_date(dateNow)
                .status_(mauSac.getStatus_())
                .build();
        return mauSacRepository.save(updateS);
    }

    @Override
    public MauSac detailMS(UUID id) {
        return mauSacRepository.findById(id).orElse(null);
    }
}
