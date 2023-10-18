package com.example.demo.controller.admin;

import com.example.demo.model.Product;
import com.example.demo.model.Size;
import com.example.demo.model.User;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.IXuatXuReponsitory;
import com.example.demo.responsitory.IproductResponsitory;
import com.example.demo.service.ProductService;
import com.example.demo.service.XuatXuService;
import com.example.demo.service.impl.IProductServicee;
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
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class ProductController {
    @Autowired
    ProductService productService = new IProductServicee();
    @Autowired
    IproductResponsitory iproductResponsitory;

    @GetMapping("/product")
    public String sanpham(Model model, @RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "full_name", required = false) String keyword) {
        Page<Product> products;
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 5);
        products = iproductResponsitory.findAll(pageable);
        model.addAttribute("page", products);
        return "admin/product/product";
    }

    @GetMapping("/view_addproduct")
    public String view(Model model) {

        return "admin/product/createproduct";
    }

    @PostMapping("/add_product")
    public String addproduct(Model model,
                             @Valid @ModelAttribute("addpr") Product newProduct,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "admin/product/product";
        } else {
            productService.addpr(newProduct);
        }
        return "redirect:/product";
    }

    @GetMapping("/detailproduct/{id}")
    public String detailpro(@PathVariable("id") UUID id, Model model) {
        Product product = productService.detail(id);
        model.addAttribute("pr", product);
        List<Product> products = productService.getAll();
        model.addAttribute("lstproduct", products);

        return "admin/product/editproduct";
    }

    @GetMapping("/view_updatepr/{id}")
    public String viewUpDatepr(@PathVariable("id") UUID id, Model model) {
        Product product = productService.detail(id);
        model.addAttribute("pr", product);
        return "admin/product/editproduct";
    }

    @PostMapping("/updatepr")
    public String updatepr(
            @Valid @ModelAttribute("updatepr") Product product,
            BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "admin/product/product";
        }
        productService.updatepr(product);
        return "redirect:/product";

    }

    @GetMapping("/deleteproduct/{id}")
    private String deleteuser(@PathVariable("id") UUID id) {
        productService.deletePproduct(id);
        return "redirect:/product";
    }


    @GetMapping("/creat")
    public String them(Model model) {

        return "admin/product/create";
    }

    @GetMapping("/thuoctinh")
    public String thuoctinh(Model model, @RequestParam(defaultValue = "1") int page) {

        return "admin/product/thuoctinh";
    }
}
