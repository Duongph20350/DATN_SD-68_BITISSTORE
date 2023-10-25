package com.example.demo.controller.admin;

import com.example.demo.model.Category;
import com.example.demo.model.KieuDang;
import com.example.demo.model.MauSac;
import com.example.demo.model.Product;
import com.example.demo.model.ProductDetail;
import com.example.demo.model.Size;
import com.example.demo.model.XuatXu;
import com.example.demo.request.SanPhamRequest;
import com.example.demo.responsitory.IProductDetailResponsitory;
import com.example.demo.service.CategoryService;
import com.example.demo.service.KieuDangService;
import com.example.demo.service.MauSacService;
import com.example.demo.service.ProductService;
import com.example.demo.service.ProductdetailService;
import com.example.demo.service.SizeService;
import com.example.demo.service.XuatXuService;
import com.example.demo.service.impl.ICategoryService;
import com.example.demo.service.impl.IProductDetaiService;
import com.example.demo.service.impl.IProductServicee;
import com.example.demo.service.impl.IXuatXuService;
import com.example.demo.service.impl.KieuDangServiceImpl;
import com.example.demo.service.impl.MauSacServiceImpl;
import com.example.demo.service.impl.SizeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.UUID;

@Controller
public class ProductdetailController {
    @Autowired
    IProductDetailResponsitory iProductDetailResponsitory;
    @Autowired
    ProductdetailService productdetailService = new IProductDetaiService();
    @Autowired
    ProductService productService = new IProductServicee();
    @Autowired
    SizeService sizeService = new SizeServiceImpl();
    @Autowired
    KieuDangService kieuDangService = new KieuDangServiceImpl();
    @Autowired
    MauSacService mauSacService = new MauSacServiceImpl();
    @Autowired
    CategoryService categoryService= new ICategoryService();


        @GetMapping("/productdetailadmin")
        public String sanphamdetails(Model model, @RequestParam(defaultValue = "1") int page
                , @RequestParam(name = "full_name", required = false) String keyword) {
            Page<ProductDetail> productDetails;
            if (page < 1) page = 1;
            Pageable pageable = PageRequest.of(page - 1, 5);
            productDetails = iProductDetailResponsitory.findAll(pageable);
            model.addAttribute("page", productDetails);
            return "admin/product/productdetail";
        }

        @GetMapping("/view_addproductdetail")
        public String view(Model model) {
            List<Product> product = productService.getAll();
            model.addAttribute("lstproduct", product);
            List<Size> size = sizeService.getAllSize();
            model.addAttribute("lstSize", size);
        List<MauSac> color = mauSacService.getAllMS();
        model.addAttribute("lstColor",color);
        List<Category> categories = categoryService.getAll();
        model.addAttribute("lstCategory", categories);
        List<KieuDang> kieuDangs = kieuDangService.getAllForm();
        model.addAttribute("lstForm",kieuDangs);


            return "admin/product/create";}

    @PostMapping("/product")
    public String create(SanPhamRequest request){
        request.getName();
            return "";
    }

}
