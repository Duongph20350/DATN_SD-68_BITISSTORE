package com.example.demo.controller.admin;

import com.example.demo.model.KieuDang;
import com.example.demo.responsitory.IKieuDangReponsitory;
import com.example.demo.service.KieuDangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class KieuDangController {

    @Autowired
    private IKieuDangReponsitory kieuDangReponsitory;
    @Autowired
    private KieuDangService kieuDangService;
    private List<KieuDang> lstKD = new ArrayList<>();




    @GetMapping("/listkd")
    public String thuoctinh(Model model, @RequestParam(defaultValue = "1") int page) {

        lstKD=kieuDangService.getAll();
        model.addAttribute("kd",lstKD);

        System.out.println(lstKD);

        return "admin/thuoctinh/kieudang/list";
    }

    @GetMapping("/kieudang")
    public String them(Model model) {

        return "admin/thuoctinh/kieudang/create";
    }
}
