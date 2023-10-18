package com.example.demo.controller.admin;

import com.example.demo.model.KieuDang;
import com.example.demo.model.Size;
import com.example.demo.responsitory.KieuDangResponsitory;
import com.example.demo.responsitory.Sizeresponsitory;
import com.example.demo.service.KieuDangService;
import com.example.demo.service.SizeService;
import com.example.demo.service.impl.KieuDangServiceImpl;
import com.example.demo.service.impl.SizeServiceImpl;
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
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class KieuDangController {
    @Autowired
    KieuDangResponsitory kieuDangResponsitory;
    @Autowired
    private KieuDangService kieuDangService = new KieuDangServiceImpl();


    List<Size> listSize = new ArrayList<>();
    @GetMapping("/listkd")
    public String thuoctinh(Model model , @RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "ten", required = false) String keyword){
        Page<KieuDang> kieuDangs ;
        if(page<1) page=1;
        Pageable pageable= PageRequest.of(page-1,5);
        kieuDangs =kieuDangResponsitory.findAll(pageable);
        model.addAttribute("page",kieuDangs);
        return "admin/thuoctinh/kieudang/list";
    }
    @GetMapping("/kieudang")
    public String them(Model model){

        return "admin/thuoctinh/kieudang/create";
    }
    @PostMapping("/createkd")
    public String addSize(Model model,@Valid @ModelAttribute("addKieuDang") KieuDang newkieuDang,
                          BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/kieudang/list";
        } else {
            kieuDangService.addForm(newkieuDang);
        }
        return "redirect:/listkd";
    }
    @GetMapping("/view-editkd/{id}")
    public String ViewEditSize( Model model, @PathVariable("id") UUID id) {

        KieuDang updateKieu = kieuDangService.detailForm(id);
        model.addAttribute("updateKieuDang", updateKieu);
        return "admin/thuoctinh/kieudang/edit";
    }

    @GetMapping("/deletesskd/{id}")
    public String deleteSize(@PathVariable("id") UUID id) {
        kieuDangService.deleteForm(id);
        return "redirect:/listkd";
    }

    @PostMapping("/editkd")
    public String updateSize(@Valid @ModelAttribute("updateKieuDang") KieuDang updateKieu,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/kieudang/list";
        }
        kieuDangService.updateForm(updateKieu);
        return "redirect:/listkd";
    }

}
