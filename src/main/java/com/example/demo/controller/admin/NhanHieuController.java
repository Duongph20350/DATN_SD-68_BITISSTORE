package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NhanHieuController {
    @GetMapping("/listnh")
<<<<<<< Updated upstream
    public String thuoctinh(Model model ,@RequestParam(defaultValue = "1") int page){

        return "admin/thuoctinh/nhanhieu/list";
    }
    @GetMapping("/nhanhieu")
=======
    public String listCategories(Model model, @RequestParam(defaultValue = "1") int page,
                                 @RequestParam(name = "ten", required = false) String keyword) {
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 5);
        Page<Category> categories;

        if (keyword == null || keyword.isBlank()) {
            categories = categoryResponsitory.findAll(pageable);
        } else {
            categories = categoryResponsitory.findByName(keyword, pageable);
        }

        model.addAttribute("page", categories);
        return "admin/thuoctinh/nhanhieu/list";
    }

    @GetMapping("/view_addnh")
>>>>>>> Stashed changes
    public String them(Model model){

        return "admin/thuoctinh/nhanhieu/create";
    }
}
