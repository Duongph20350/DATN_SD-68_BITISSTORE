package com.example.demo.controller.admin;

import com.example.demo.model.Size;
import com.example.demo.responsitory.Sizeresponsitory;
import com.example.demo.service.SizeService;
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
public class SizeController {
    @Autowired
    Sizeresponsitory sizeresponsitory;
    @Autowired
    private SizeService sizeService = new SizeServiceImpl();


    List<Size> listSize = new ArrayList<>();
    @GetMapping("/listsz")
    public String thuoctinh(Model model , @RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "ten", required = false) String keyword){
        Page<Size> sizeS ;
        if(page<1) page=1;
        Pageable pageable= PageRequest.of(page-1,5);
        sizeS =sizeresponsitory.findAll(pageable);
        model.addAttribute("page",sizeS);
        return "admin/thuoctinh/size/list";
    }
    @GetMapping("/size")
    public String them(Model model){

        return "admin/thuoctinh/size/create";
    }
    @PostMapping("/create")
    public String addSize(Model model,@Valid @ModelAttribute("addSize") Size newSize,
                          BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/size/list";
        } else {
            sizeService.addSize(newSize);
        }
        return "redirect:/listsz";
    }
    @GetMapping("/view-edit/{id}")
    public String ViewEditSize( Model model, @PathVariable("id") UUID id) {

        Size updateSize = sizeService.detailSize(id);
        model.addAttribute("updateSize", updateSize);
        return "admin/thuoctinh/size/edit";
    }

    @GetMapping("/deletess/{id}")
    public String deleteSize(@PathVariable("id") UUID id) {
        sizeService.deleteSize(id);
        return "redirect:/listsz";
    }

    @PostMapping("/edit")
    public String updateSize(@Valid @ModelAttribute("updateSize") Size updateSize,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/size/list";
        }
        sizeService.updateSize(updateSize);
        return "redirect:/listsz";
    }
}
