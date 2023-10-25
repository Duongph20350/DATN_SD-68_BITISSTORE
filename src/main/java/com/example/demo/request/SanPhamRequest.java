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

    private int quantity;

    private List<UUID> nameSize;
}
