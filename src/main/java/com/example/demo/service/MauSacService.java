package com.example.demo.service;


import com.example.demo.model.MauSac;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;

public interface MauSacService {
    void delete(UUID id);
    List<MauSac> getAllMS();
    public Page<MauSac> timKiemVaPhanTrang(String keyword, Pageable pageable) ;
    MauSac addMS(MauSac mauSac);

    MauSac updateMS(MauSac mauSac);
    MauSac detailMS(UUID id);
}
