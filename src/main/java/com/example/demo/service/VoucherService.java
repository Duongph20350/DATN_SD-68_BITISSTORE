package com.example.demo.service;

import com.example.demo.model.Size;
import com.example.demo.model.Voucher;
import com.example.demo.model.XuatXu;

import java.util.List;
import java.util.UUID;

public interface VoucherService {
    void deletevoucher(UUID id);

    Voucher adddvoucher(Voucher voucher);

    Voucher update( Voucher voucher);

    Voucher detail(UUID id);

    List<Voucher> getAll();







}
