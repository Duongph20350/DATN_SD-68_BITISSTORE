package com.example.demo.controller.admin;

import com.example.demo.model.Category;
import com.example.demo.model.Size;
import com.example.demo.model.Voucher;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.IVoucherResponsitory;
import com.example.demo.service.VoucherService;
import com.example.demo.service.impl.IVoucherService;
import jakarta.persistence.Column;
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
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class KhuyenmaiController {
    @Autowired
    IVoucherResponsitory iVoucherResponsitory;
    @Autowired
    VoucherService voucherService = new IVoucherService();

    @GetMapping("/khuyenmai")
    public String thuoctinh(Model model, @RequestParam(defaultValue = "1") int page
    ) {
        Page<Voucher> vouchers;
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 5);
        vouchers = iVoucherResponsitory.findAll(pageable);
        model.addAttribute("page", vouchers);
        return "admin/khuyenmai/khuyenmai";
    }

    @GetMapping("/view_addkm")
    public String themkm(Model model) {

        return "admin/khuyenmai/creatkm";
    }


    //    private UUID id;
//    @Column(name = "name_")
//    private String name_ ;
//    private String code;
//    private  String value_;
//    private Date start_date_;
//    private Date  end_date;
//    private Integer status_;
    @PostMapping("/add_voucher")
    public String addvoucher(
                             Model model,@Valid @ModelAttribute("adddvoucher") Voucher newVoucher,
                             BindingResult result
    ) {
        if (result.hasErrors()) {
            return "admin/khuyenmai/khuyenmai";
        } else {
            voucherService.adddvoucher(newVoucher);
        }
        return "redirect:/khuyenmai";
    }



    @GetMapping("/view_updatekm/{id}")
    public String viewUpDate(@PathVariable("id") UUID id, Model model) {
        Voucher voucher = voucherService.detail(id);
        model.addAttribute("updatekm", voucher);
        return "admin/khuyenmai/edit";
    }
    @PostMapping("/updatekm")
    public String updatekm(Model model,

            @Valid @ModelAttribute("update") Voucher newVoucher,
            BindingResult result) {
        if (result.hasErrors()) {
            return "admin/khuyenmai/edit";
        }
        voucherService.update(newVoucher);
        return "redirect:/lstxx";

    }
    @GetMapping("/deletevc/{id}")
    private String deletevc(@PathVariable("id") UUID id) {
        voucherService.deletevoucher(id);

        return "redirect:/khuyenmai";
    }
}
