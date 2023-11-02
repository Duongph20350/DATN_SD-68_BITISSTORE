package com.example.demo.controller.admin;

import com.example.demo.request.CreatePayMentMethodTransferRequest;
import com.example.demo.service.PayMentService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.UnsupportedEncodingException;

/**
 * @author thangdt
 */
@RestController
@RequestMapping("/payment")
public class PayMentRestController {

    @Autowired
    private PayMentService payMentService;

    @PostMapping("")
    public String getAllProductInCart(@RequestBody CreatePayMentMethodTransferRequest createPayMentMethodTransferRequest, HttpServletRequest request) {
            return payMentService.createVnpay(createPayMentMethodTransferRequest,request);

    }
}
