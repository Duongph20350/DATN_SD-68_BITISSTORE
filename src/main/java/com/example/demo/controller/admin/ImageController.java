package com.example.demo.controller.admin;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

public class ImageController {
    @GetMapping("/imagelist")
    public String hinhanh(Model model){

        return "admin/image/list";
    }
}
