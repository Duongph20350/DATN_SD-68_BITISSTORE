package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class KhuyenmaiController {
    @GetMapping("/khuyenmai")
    public String thuoctinh(Model model){

        return "admin/khuyenmai/khuyenmai";
    }
    @GetMapping("/creatkm")
    public String creatkm(Model model){

        return "admin/khuyenmai/creatkm";
    }

}
