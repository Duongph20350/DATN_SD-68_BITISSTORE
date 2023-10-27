package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class SizeController {
    @GetMapping("/listsz")
<<<<<<< Updated upstream
    public String thuoctinh(Model model ,@RequestParam(defaultValue = "1") int page){

=======
    public String thuoctinh(Model model, @RequestParam(defaultValue = "1") int page,
                            @RequestParam(name = "ten", required = false) String keyword) {
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 5);
        Page<Size> sizeS;

        if (keyword == null || keyword.isBlank()) {
            sizeS = sizeresponsitory.findAll(pageable);
        } else {
            sizeS = sizeresponsitory.findByName(keyword, pageable);
        }

        model.addAttribute("page", sizeS);
>>>>>>> Stashed changes
        return "admin/thuoctinh/size/list";
    }

    
    @GetMapping("/size")
    public String them(Model model){

        return "admin/thuoctinh/size/create";
    }
}
