package com.example.demo.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Payment {
    @GetMapping("/payment")
    public String chinhsachbaomat(Model model){
        return "shop/payment";
    }
}
