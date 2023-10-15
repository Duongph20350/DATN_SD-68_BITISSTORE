package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class KieuDangController {
    @GetMapping("/listkd")
    public String thuoctinh(Model model ,@RequestParam(defaultValue = "1") int page){

        return "admin/thuoctinh/kieudang/list";
    }
    @GetMapping("/kieudang")
    public String them(Model model){

        return "admin/thuoctinh/kieudang/create";
    }

}
