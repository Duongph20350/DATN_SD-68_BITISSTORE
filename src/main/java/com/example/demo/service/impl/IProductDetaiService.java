package com.example.demo.service.impl;

import com.example.demo.model.KieuDang;
import com.example.demo.model.MauSac;
import com.example.demo.model.Product;
import com.example.demo.model.ProductDetail;
import com.example.demo.request.SanPhamRequest;
import com.example.demo.responsitory.IMauSacRepository;
import com.example.demo.responsitory.IProductDetailResponsitory;
import com.example.demo.responsitory.IproductResponsitory;
import com.example.demo.responsitory.KieuDangResponsitory;
import com.example.demo.service.ProductdetailService;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class IProductDetaiService implements ProductdetailService {
    @Autowired
    IProductDetailResponsitory productDetailResponsitory;

    @Autowired
    IproductResponsitory pIproductResponsitory;

    @Autowired
    KieuDangResponsitory kieuDangResponsitory;

    @Autowired
    IMauSacRepository mauSacRepository;

    @Override
    public List<ProductDetail> getAll() {
        return productDetailResponsitory.findAll() ;
    }

    @Override
    public boolean createProducts(SanPhamRequest request) {
        request.getNameSize().forEach(item -> {
            Optional<Product> product = pIproductResponsitory.findById(request.getName());
            Optional<KieuDang> kieuDang = kieuDangResponsitory.findById(request.getKieu());
            Optional<MauSac> mauSac = mauSacRepository.findById(request.getColor());
            ProductDetail productDetail = ProductDetail.builder().product(product.get()).mauSac(mauSac.get()).kieuDang(kieuDang.get()).mota(request.getDesc()).giaban(Integer.valueOf(request.getPrice())).soluong(request.getQuantity()).build();

//            new BigDecimal(request.getPrice()) gia là BigDecimal
            productDetailResponsitory.save(productDetail);
        });
        return true;
    }
}
