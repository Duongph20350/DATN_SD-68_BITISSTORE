package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Entity
@Builder
@Table(name = "product_detail")
public class ProductDetail {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2",strategy = "uuid2")
    @Column(name = "id",columnDefinition = "uniqueidentifier default newid()")
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
    @Column(name = "gianhap")
    private Integer gianhap;
    @Column(name = "price")
    private Integer giaban;
    @Column(name = "thue")
    private Integer thue;
    @Column(name = "status_")
    private Integer status_;
    @Column(name = "description_")
    private String mota;
    @Column(name = "quantity")
    private Integer soluong;
    @Column(name = "maqr")
    private String maqr;
private Integer ckeckvoucher;

    @ManyToOne
    @JoinColumn(name = "id_product", referencedColumnName = "Id")
    private Product product;

    @ManyToOne
    @JoinColumn(name = "id_form", referencedColumnName = "Id")
    private KieuDang kieuDang;

    @ManyToOne
    @JoinColumn(name = "id_category", referencedColumnName = "Id")
    private Category category;

    @ManyToOne()
    @JoinColumn(name = "id_color", referencedColumnName = "Id")
    private MauSac mauSac;

    @ManyToOne()
    @JoinColumn(name = "id_size", referencedColumnName = "Id")
    private Size size;

}
