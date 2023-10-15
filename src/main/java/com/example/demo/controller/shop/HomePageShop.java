package com.example.demo.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageShop {
    @GetMapping("/homepageshop")
    public String homePage(Model model){


        return "shop/homepageshop";
    }
    @GetMapping("/baomat")
    public String chinhsachbaomat(Model model){
        return "shop/chinhsach/baomat";
    }
    @GetMapping("/huongdan")
    public String chinhsachhuongdan(Model model){
        return "shop/chinhsach/huongdan";
    }
    @GetMapping("/doihang")
    public String chinhsachdoihang(Model model){
        return "shop/chinhsach/doihang";
    }
    @GetMapping("/thanhtoan")
    public String chinhsachthanhtoan(Model model){ return "shop/chinhsach/thanhtoan"; }
    @GetMapping("/vanchuyen")
    public String chinhsachvanchuyen(Model model){
        return "shop/chinhsach/vanchuyen";
    }
    @GetMapping("/gioithieu")
    public String chinhsachgioithieu(Model model){
        return "shop/chinhsach/gioithieu";
    }
    @GetMapping("/lienhe")
    public String lienhe(Model model){
        return "shop/lienhe";
    }
    @GetMapping("/tintuc")
    public String tintuc(Model model){
        return "shop/chinhsach/tintuc";
    }
    @GetMapping("/login")
    public String login(Model model){
        return "shop/login";
    }
}
