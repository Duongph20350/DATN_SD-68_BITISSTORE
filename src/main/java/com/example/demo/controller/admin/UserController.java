package com.example.demo.controller.admin;

import com.example.demo.model.Size;
import com.example.demo.model.User;
import com.example.demo.model.XuatXu;
import com.example.demo.responsitory.IUserResponsitory;
import com.example.demo.service.IUserService;
import com.example.demo.service.impl.UserService;
import org.hibernate.annotations.Cache;
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
import java.util.UUID;

@Controller
public class UserController {
    @Autowired
    IUserResponsitory iUserResponsitory;
    @Autowired
    private IUserService userService = new UserService();


    @GetMapping("/listuser")
    public String user(Model model , @RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "full_name", required = false) String keyword){
        Page<User> users ;
//        if (page < 1) page = 1;
//        Pageable pageable = PageRequest.of(page - 1, 5);
//        if (keyword == null || keyword.isBlank()) {
//            users =iUserResponsitory.findAll(pageable);
//        } else {
//            users= iUserResponsitory.findfull_nameContains(keyword,pageable);
//        }
        if(page<1) page=1;
        Pageable pageable= PageRequest.of(page-1,5);
       users =iUserResponsitory.findAll(pageable);
        model.addAttribute("page",users);
        return "admin/account/list";
    }
    @GetMapping("/deleteuser/{id}")
    private String deleteuser(@PathVariable("id") UUID id){
        userService.deleteUser(id);
        return "redirect:/listuser";
    }
    @GetMapping("/view-editus/{id}")
    public String ViewEditUser( Model model, @PathVariable("id") UUID id) {

        User updateUser = userService.detailuser(id);
        model.addAttribute("updateUser", updateUser);
        return "admin/account/edit";
    }
    @PostMapping("/editus")
    public String updateSize(@Valid @ModelAttribute("updateUser") User neUser,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "admin/account/list";
        }
        userService.updateUser(neUser);
        return "redirect:/listuser";
    }
    @GetMapping("/usercreat")
    public String themuser(Model model){

        return "admin/account/creat";
    }
    @PostMapping("/createuser")
    public String addUser(Model model,@Valid @ModelAttribute("adduser") User newUser,
                          BindingResult result) {
        if (result.hasErrors()) {
            return "admin/account/list";
        } else {
            userService.adduser(newUser);
        }
        return "redirect:/listuser";
    }
}
