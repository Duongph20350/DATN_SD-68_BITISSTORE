package com.example.demo.responsitory;

import com.example.demo.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.UUID;

public interface IimageResponsitory extends JpaRepository<Image, UUID> {

}
