package com.example.demo.service;

import com.example.demo.request.CreatePayMentMethodTransferRequest;
import com.example.demo.request.PayMentVnpayRequest;
import jakarta.servlet.http.HttpServletRequest;

public interface PayMentService {

    String createVnpay(CreatePayMentMethodTransferRequest createPayMentMethodTransferRequest, HttpServletRequest request);

    boolean paymentSuccess( PayMentVnpayRequest request);

}
