package com.example.demo.controller.admin;

import com.example.demo.responsitory.IXuatXuReponsitory;
import com.example.demo.service.XuatXuService;
import com.example.demo.service.impl.IXuatXuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

    @GetMapping("/creat")
    public String them(Model model){

        return "admin/product/create";
    }
    @GetMapping("/thuoctinh")
    public String thuoctinh(Model model ,@RequestParam(defaultValue = "1") int page){

        return "admin/product/thuoctinh";
    }
}
