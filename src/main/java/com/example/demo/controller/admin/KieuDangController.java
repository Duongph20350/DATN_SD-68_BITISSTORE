package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class KieuDangController {
    @GetMapping("/listkd")
<<<<<<< Updated upstream
    public String thuoctinh(Model model ,@RequestParam(defaultValue = "1") int page){

=======
    public String thuoctinh(Model model, @RequestParam(defaultValue = "1") int page,
                            @RequestParam(name = "ten", required = false) String keyword) {
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 5);
        Page<KieuDang> kieuDangs;

        if (keyword == null || keyword.isBlank()) {
            kieuDangs = kieuDangResponsitory.findAll(pageable);
        } else {
            kieuDangs = kieuDangResponsitory.findByName(keyword, pageable);
        }

        model.addAttribute("page", kieuDangs);
>>>>>>> Stashed changes
        return "admin/thuoctinh/kieudang/list";
    }
    @GetMapping("/kieudang")
    public String them(Model model){

        return "admin/thuoctinh/kieudang/create";
    }

}
