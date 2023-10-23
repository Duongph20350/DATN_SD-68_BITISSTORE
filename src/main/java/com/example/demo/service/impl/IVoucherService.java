package com.example.demo.service.impl;

import com.example.demo.model.Category;
import com.example.demo.model.Size;
import com.example.demo.model.Voucher;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.IVoucherResponsitory;
import com.example.demo.service.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class IVoucherService implements VoucherService {
    @Autowired
    IVoucherResponsitory iVoucherResponsitory;
    private final long date = System.currentTimeMillis();
    private final Date dateNow = new Date(date);
    @Override
    public void deletevoucher(UUID id) {
        iVoucherResponsitory.deleteById(id);
    }

    @Override
    public Voucher adddvoucher(Voucher voucher) {
        Voucher newvVoucher1 = new Voucher().builder()
                .name(voucher.getName())
                .code(voucher.getCode())
                .value_(voucher.getValue_())
                .start_date_(voucher.getStart_date_())
               .end_date(voucher.getEnd_date())
                .status_(voucher.getStatus_())
                .build();
        return iVoucherResponsitory.save(newvVoucher1);

    }

    @Override
    public Voucher update(Voucher voucher) {
        Voucher voucher1= iVoucherResponsitory.findById(voucher.getId()).orElse(null).builder()
                .id(voucher.getId())
                .name(voucher.getName())
                .code(voucher.getCode())
                .value_(voucher.getValue_())
                .start_date_(voucher.getStart_date_())
                .end_date(voucher.getEnd_date())
                .status_(voucher.getStatus_())
                .build();
        return iVoucherResponsitory.save(voucher1);

    }


    @Override
    public Voucher detail(UUID id) {
        return iVoucherResponsitory.findById(id).get();
    }

    @Override
    public List<Voucher> getAll() {
        return iVoucherResponsitory.findAll();
    }
}
