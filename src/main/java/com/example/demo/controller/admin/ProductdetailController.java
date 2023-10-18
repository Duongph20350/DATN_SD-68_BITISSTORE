package com.example.demo.controller.admin;

import com.example.demo.model.Product;
import com.example.demo.model.ProductDetail;
import com.example.demo.responsitory.IProductDetailResponsitory;
import com.example.demo.service.ProductService;
import com.example.demo.service.ProductdetailService;
import com.example.demo.service.impl.IProductDetaiService;
import com.example.demo.service.impl.IProductServicee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ProductdetailController {
@Autowired
    IProductDetailResponsitory iProductDetailResponsitory;
@Autowired
    ProductdetailService productdetailService = new IProductDetaiService();
@Autowired
    ProductService productService = new IProductServicee();
    @GetMapping("/productdetailadmin")
    public String sanphamdetails(Model model, @RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "full_name", required = false) String keyword){
        Page<ProductDetail> productDetails ;
        if(page<1) page=1;
        Pageable pageable= PageRequest.of(page-1,5);
        productDetails =iProductDetailResponsitory.findAll(pageable);
        model.addAttribute("page",productDetails);
        return "admin/product/productdetail";
    }
    @GetMapping("/view_addproductdetail")
    public String view(Model model){
        List<Product> product = productService.getAll();
        model.addAttribute("lstproduct",product);


        return "admin/product/create";
    }
}
