package com.example.demo.controller.admin;

import com.example.demo.request.PayMentVnpayRequest;
import com.example.demo.service.PayMentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author thangdt
 */
@Controller
@RequestMapping("/payment")
public class PayMentController  {


    @Autowired
    private PayMentService payMentService;

    @GetMapping("/payment-success")
    public String paymentSuccess(PayMentVnpayRequest request, Model model){
        payMentService.paymentSuccess( request);
        model.addAttribute("vnp_ResponseCode",request.getVnp_ResponseCode() );
        model.addAttribute("vnp_TxnRef",request.getVnp_TxnRef() );
        return "admin/donhang/SimpleSuccessPage";
    }
}
