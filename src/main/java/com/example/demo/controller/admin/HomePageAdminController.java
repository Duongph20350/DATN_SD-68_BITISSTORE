package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class HomePageAdminController {
    @GetMapping("/homepageadmin")
    public String homePage(Model model){

        return "admin/homepageadmin";
    }
    @GetMapping("/product")
    public String sanpham(Model model){

        return "admin/product/product";
    }

}
