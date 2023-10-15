package com.example.demo.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class Cart {
    @GetMapping("/giohang")
    public String giohang(Model model){
        return "shop/cart";
    }
}
