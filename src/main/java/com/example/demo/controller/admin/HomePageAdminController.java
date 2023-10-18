package com.example.demo.controller.admin;

import com.example.demo.model.Product;
import com.example.demo.service.ProductService;
import com.example.demo.service.impl.IProductServicee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomePageAdminController {
    @Autowired
    ProductService productService = new IProductServicee();
    @GetMapping("/homepageadmin")
    public String homePage(Model model){
        List<Product> product = productService.getAll();
        model.addAttribute("lstproduct",product);
        return "admin/homepageadmin";
    }


}
