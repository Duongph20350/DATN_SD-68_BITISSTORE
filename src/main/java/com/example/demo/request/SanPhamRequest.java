package com.example.demo.request;

import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.UUID;

@Getter
@Setter
public class SanPhamRequest {

    private UUID name;

    private UUID color;

    private UUID kieu;


    private String desc;

    private String price;
    private String gianhap;
    private String thue;
    private Integer status_;
    private Integer ckeckvoucher;
    private int quantity;
    private List<UUID> nameSize;

}
