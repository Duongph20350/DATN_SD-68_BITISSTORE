package com.example.demo.service;


import com.example.demo.model.MauSac;

import java.util.List;
import java.util.UUID;

public interface MauSacService {
    void delete(UUID id);
    List<MauSac> getAllMS();

    MauSac addMS(MauSac mauSac);

    MauSac updateMS(MauSac mauSac);
    MauSac detailMS(UUID id);
}
