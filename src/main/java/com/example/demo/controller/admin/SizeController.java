package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class SizeController {
    @GetMapping("/listsz")
    public String thuoctinh(Model model ,@RequestParam(defaultValue = "1") int page){

        return "admin/thuoctinh/size/list";
    }
    @GetMapping("/size")
    public String them(Model model){

        return "admin/thuoctinh/size/create";
    }
}
