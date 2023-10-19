package com.example.demo.controller.admin;

import com.example.demo.model.MauSac;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("mau-sac")
public class MauSacController {
    @Autowired
    private IMauSacRepository mauSacRepository;
    @Autowired
    private MauSacService mauSacService = new MauSacServiceImpl();
//    @GetMapping("/listms")
//    public String thuoctinh(Model model ,@RequestParam(defaultValue = "1") int page){
//
//        return "admin/thuoctinh/mausac/list";
//    }
//    @GetMapping("/mausac")
//    public String them(Model model){
//
//        return "admin/thuoctinh/mausac/create";
//    }

//    @Autowired
//    private IMauSacRepository nvRepo;
//
//    public MauSacController()
//    {
//        this.ds = new ArrayList<>();
//    }

//    @GetMapping("listms")
//    public String index(Model model ,
//                        @RequestParam(value = "p",defaultValue = "0")Integer p
//    ) {
//        if(p<=0) p =0;
//        Pageable pageable = PageRequest.of(p, 3);
//
//        Page<MauSac> MauSacPage = nvRepo.findAll(pageable);
//
//        ds = nvRepo.findAll();
//
//
//        model.addAttribute("MauSacPage", MauSacPage);
//        model.addAttribute("ms", ds);
//        return "admin/thuoctinh/mausac/list";
//    }
//    @GetMapping("delete/{id}")
//    public String delete(@PathVariable("id") UUID id)
//    {
//        MauSac nv = this.nvRepo.findByMa(id);
//        this.nvRepo.delete(nv);
//        return "admin/thuoctinh/mausac/list";
//    }
//
//    @GetMapping("create")
//    public String create(   @Valid @ModelAttribute("ms") MauSacRequest req
//    )
//    {
//
//        return "admin/thuoctinh/mausac/create";
//    }
//
//    @PostMapping("add")
//    public String store(
//            @Valid @ModelAttribute("ms") MauSacRequest req,
//            BindingResult result
//    ) {
//        if (result.hasErrors()) {
//            return "admin/thuoctinh/mausac/create";
//        } else {
//            MauSac nv = new MauSac();
//       nv.setName_(req.getName_());
//       nv.setStatus_(req.getStatus_());
//
//
//
//            this.nvRepo.save(nv);
//            return "redirect:/mau-sac/listms";
//        }}
////
////


    List<MauSac> listMS = new ArrayList<>();
    @GetMapping("/listms")
    public String thuoctinh(Model model , @RequestParam(defaultValue = "1") int page
            , @RequestParam(name = "ten", required = false) String keyword){
        Page<MauSac> mauSacs ;
        if(page<1) page=1;
        Pageable pageable= PageRequest.of(page-1,5);
        mauSacs =mauSacRepository.findAll(pageable);
        model.addAttribute("page",mauSacs);
        return "admin/thuoctinh/mausac/list";
    }
    @GetMapping("/mausac")
    public String them(Model model){

        return "admin/thuoctinh/mausac/create";
    }
    @PostMapping("/create")
    public String addSize(Model model,@Valid @ModelAttribute("ms") MauSac  mauSac,
                          BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/mausac/list";
        } else {
            mauSacService.addMS(mauSac);
        }
        return "redirect:/mau-sac/listms";
    }
    @GetMapping("/view-edit/{id}")
    public String ViewEditSize( Model model, @PathVariable("id") UUID id) {

        MauSac updateMs = mauSacService.detailMS(id);
        model.addAttribute("updateMs", updateMs);
        return "admin/thuoctinh/mausac/edit";
    }

    @GetMapping("delete/{id}")
    public String deleteSize(@PathVariable("id") UUID id) {
        MauSac ms = mauSacRepository.findByMa(id);
        mauSacRepository.delete(ms);
        return "redirect:/mau-sac/listms";
    }

    @PostMapping("/edit")
    public String updateSize(@Valid @ModelAttribute("ms") MauSac updateMS,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "admin/thuoctinh/mausac/list";
        }
        mauSacService.updateMS(updateMS);
        return "redirect:/mau-sac/listms";
    }
}
