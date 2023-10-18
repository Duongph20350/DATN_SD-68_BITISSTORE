package com.example.demo.controller.admin;

import com.example.demo.model.Category;
import com.example.demo.model.Size;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.ICategoryResponsitory;
import com.example.demo.service.CategoryService;
import com.example.demo.service.impl.ICategoryService;
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
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class NhanHieuController {
    @Autowired
    CategoryService categoryService = new ICategoryService();
    @Autowired
    ICategoryResponsitory categoryResponsitory;

    @GetMapping("/listnh")
    public String thuoctinh(Model model ,@RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "ten", required = false) String keyword){
        Page<Category> categories;
        if(page<1) page=1;
        Pageable pageable= PageRequest.of(page-1,5);
       categories =categoryResponsitory.findAll(pageable);
        model.addAttribute("page",categories);
        return "admin/thuoctinh/nhanhieu/list";
    }
    @GetMapping("/view_addnh")
    public String them(Model model){

        return "admin/thuoctinh/nhanhieu/create";
    }
    @PostMapping("/createnh")
    public String addnhanhieu(Model model,@Valid @ModelAttribute("addcategory") Category newCategory,
                          BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/nhanhieu/list";
        } else {
            categoryService.addcategory(newCategory);
        }
        return "redirect:/listnh";
    }

    @GetMapping("/detailnh/{id}")
    public String detail(@PathVariable("id") UUID id, Model model) {
       Category category= categoryService.detail(id);
        model.addAttribute("nh", category);
        List<Category> categories = categoryService.getAll();
        model.addAttribute("lstnh",categories);

        return "admin/thuoctinh/nhanhieu/list";
    }

    @GetMapping("/view_updatenh/{id}")
    public String viewUpDate(@PathVariable("id") UUID id, Model model) {
        Category category= categoryService.detail(id);
        model.addAttribute("nh", category);
        return "admin/thuoctinh/nhanhieu/edit";
    }

    @PostMapping("/updatenh")
    public String updatenh(@Valid @ModelAttribute("updatecategory") Category updateCategory,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/nhanhieu/list";
        }
        categoryService.updatecategory(updateCategory);
        return "redirect:/listnh";
    }
    @GetMapping("/deletenh/{id}")
    private String deletexnh(@PathVariable("id")UUID id){
        categoryService.deletecategory(id);

        return "redirect:/listnh";
    }
}
