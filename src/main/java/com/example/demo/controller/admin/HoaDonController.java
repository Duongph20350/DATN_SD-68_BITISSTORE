package com.example.demo.controller.admin;

import com.example.demo.model.Bill;
import com.example.demo.responsitory.IBillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HoaDonController {
    @Autowired
   private IBillRepository billRepository;
    private List<Bill> billList = new ArrayList<>();
    @GetMapping("/banhanghome")
    public String banhang(Model model){

        return "admin/donhang/banhang";
    }
    @GetMapping("/hoadonhome")
    public String hoadon(Model model, @RequestParam(defaultValue = "1") int page,
                         @RequestParam(name = "ten", required = false) String keyword) {
//        if (page < 1) page = 1;
//        Pageable pageable = PageRequest.of(page - 1, 5);
//        Page<Bill> bills;
//
//        if (keyword == null || keyword.isBlank()) {
//            bills = billRepository.findAll(pageable);
//        } else {
//            bills = billRepository.findByuserNames(keyword, pageable);
//        }
//
//        model.addAttribute("page", bills);
        return "admin/donhang/donhang";
    }

}
