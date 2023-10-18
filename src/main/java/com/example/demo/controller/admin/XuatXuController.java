package com.example.demo.controller.admin;

import ch.qos.logback.classic.pattern.DateConverter;
import com.example.demo.model.Size;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.IXuatXuReponsitory;
import com.example.demo.service.SizeService;
import com.example.demo.service.XuatXuService;
import com.example.demo.service.impl.IXuatXuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller

public class XuatXuController {
    @Autowired
    IXuatXuReponsitory xuatXuReponsitory;
    @Autowired
    private XuatXuService iXuatXuService = new IXuatXuService();

    @GetMapping("/listxx")
    public String thuoctinh(Model model, @RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "ten", required = false) String keyword) {
        Page<com.example.demo.model.XuatXu> xuatXus;
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 5);
        xuatXus = xuatXuReponsitory.findAll(pageable);
        model.addAttribute("page", xuatXus);
        return "admin/thuoctinh/xuatxu/list";
    }

    @GetMapping("/view_add")
    public String them(Model model) {

        return "admin/thuoctinh/xuatxu/create";
    }

    @PostMapping("/add_xuatxu")
    public String addxuatxu(
            Model model, @Valid @ModelAttribute("addxuatxu") XuatXu newXuatXu,
            BindingResult result
    ) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/xuatxu/list";
        } else {

            iXuatXuService.addxuatxu(newXuatXu);

        }
        return "redirect:/listxx";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") UUID id, Model model) {
        XuatXu xuatXu = iXuatXuService.detail(id);
        model.addAttribute("xx", xuatXu);
        List<XuatXu> xuatXus = iXuatXuService.getAll();
        model.addAttribute("lstxuatxu", xuatXus);

        return "admin/thuoctinh/xuatxu/list";
    }

    @GetMapping("/view_update/{id}")
    public String viewUpDate(@PathVariable("id") UUID id, Model model) {
        XuatXu xuatXu = iXuatXuService.detail(id);
        model.addAttribute("xx", xuatXu);
        return "admin/thuoctinh/xuatxu/edit";
    }

    @PostMapping("/update")
    public String update(Model model,

                         @Valid @ModelAttribute("update") XuatXu xuatXu,
                         BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/xuatxu/list";
        }
        iXuatXuService.update(xuatXu);

        return "redirect:/listxx";

    }

    @GetMapping("/delete/{id}")
    private String deletexuatxu(@PathVariable("id") UUID id) {
        iXuatXuService.deletexuatxu(id);
        return "redirect:/listxx";
    }
}
