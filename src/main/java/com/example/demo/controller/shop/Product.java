package com.example.demo.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Product {
    @GetMapping("/sanpham")
    public String sanpham(Model model){
        return "shop/product";
    }
    @GetMapping("/productdetail")
    public String sanphamchitiet(Model model){
        return "shop/productdetail";
    }
    @GetMapping("/yeuthich")
    public String yeuthich(Model model){
        return "shop/yeuthich";
    }
}
