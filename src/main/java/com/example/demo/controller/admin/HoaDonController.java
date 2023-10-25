package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HoaDonController {
    @GetMapping("/banhanghome")
    public String banhang(Model model){

        return "admin/donhang/banhang";
    }
@GetMapping("/hoadonhome")
public String hoadon(Model model){

    return "admin/donhang/donhang";
}
}
