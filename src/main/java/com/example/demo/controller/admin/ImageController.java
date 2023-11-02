package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class ImageController {
    @GetMapping("/imagelist")
    public String hinhanh(Model model){

        return "admin/image/list";
    }
}
