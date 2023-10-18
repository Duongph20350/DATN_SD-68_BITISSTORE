package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.UUID;
@Entity
@Table(name = "form")
@Setter
@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor

public class KieuDang {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id")
    private UUID id;
    @Column(name = "name_")
    private String name_ ;
    @Column(name = "create_by")
    private String create_by;
    @Column(name = "create_date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date create_date;
    @Column(name = "last_modifeed_date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date  last_modifeed_date;
    @Column(name = "status_")
    private Integer status_;
}
