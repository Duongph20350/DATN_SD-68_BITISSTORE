package com.example.demo.controller.admin;

import com.example.demo.responsitory.IXuatXuReponsitory;
import com.example.demo.service.XuatXuService;
import com.example.demo.service.impl.IXuatXuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller

public class XuatXuController {
    @Autowired
    IXuatXuReponsitory xuatXuReponsitory;
    @Autowired
    private XuatXuService iXuatXuService = new IXuatXuService();
    @GetMapping("/listxx")
    public String thuoctinh(Model model , @RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "ten", required = false) String keyword){
        Page<com.example.demo.model.XuatXu> xuatXus ;
        if(page<1) page=1;
        Pageable pageable= PageRequest.of(page-1,5);
          xuatXus =xuatXuReponsitory.findAll(pageable);
        model.addAttribute("page",xuatXus);
        return "admin/thuoctinh/xuatxu/list";
    }
    @GetMapping("/xuatxu")
    public String them(Model model){

        return "admin/thuoctinh/xuatxu/create";
    }
    @GetMapping("/xuatxuedit")
    public String sua(Model model){

        return "admin/thuoctinh/xuatxu/edit";
    }
}
