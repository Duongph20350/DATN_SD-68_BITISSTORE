package com.example.demo.service;

import com.example.demo.model.Size;

import java.util.List;
import java.util.UUID;

public interface SizeService {
    void deleteSize(UUID id);
    List<Size> getAllSize();

    Size addSize(Size size);

    Size updateSize(Size size);
    Size detailSize(UUID id);
}
