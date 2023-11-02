package com.example.demo.service.impl;

import com.example.demo.model.KieuDang;
import com.example.demo.model.MauSac;
import com.example.demo.model.Product;
import com.example.demo.model.ProductDetail;
import com.example.demo.model.Size;
import com.example.demo.request.SanPhamRequest;
import com.example.demo.responsitory.IMauSacRepository;
import com.example.demo.responsitory.IProductDetailResponsitory;
import com.example.demo.responsitory.IproductResponsitory;
import com.example.demo.responsitory.KieuDangResponsitory;
import com.example.demo.responsitory.Sizeresponsitory;
import com.example.demo.service.ProductdetailService;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
@Transactional
public class IProductDetaiService implements ProductdetailService {
    @Autowired
    IProductDetailResponsitory productDetailResponsitory;
@Autowired
    Sizeresponsitory sizeresponsitory;
    @Autowired
    IproductResponsitory pIproductResponsitory;

    @Autowired
    KieuDangResponsitory kieuDangResponsitory;

    @Autowired
    IMauSacRepository mauSacRepository;

    @Override
    public List<ProductDetail> getAll() {
        return productDetailResponsitory.findAll();
    }

    @Override
    public boolean createProducts(SanPhamRequest request) {
        request.getNameSize().forEach(item -> {
            Optional<Product> product = pIproductResponsitory.findById(request.getName());
            List<Size> size =sizeresponsitory.findAllById(request.getNameSize());

            Optional<KieuDang> kieuDang = kieuDangResponsitory.findById(request.getKieu());
            Optional<MauSac> mauSac = mauSacRepository.findById(request.getColor());
            ProductDetail productDetail = ProductDetail.builder()
                    .product(product.get())
                    .mauSac(mauSac.get())
                    .kieuDang(kieuDang.get())
                    .mota(request.getDesc())
                    .giaban(Integer.valueOf(request.getPrice()))
                    .gianhap(Integer.valueOf(request.getGianhap()))
                    .thue(Integer.valueOf(request.getThue()))

                    .status_(Integer.valueOf(request.getStatus_()))
                    .ckeckvoucher(Integer.valueOf(request.getCkeckvoucher()))
                    .soluong(request.getQuantity()).build();


            productDetailResponsitory.save(productDetail);
        });
        return true;
    }

    @Override
    public ProductDetail detailProductDetail(UUID id) {
        return productDetailResponsitory.findById(id).get();
    }
}
