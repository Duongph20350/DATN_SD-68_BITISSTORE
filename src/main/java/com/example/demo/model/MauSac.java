package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.UUID;
@Entity
@Table(name = "color")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor

@Builder

public class MauSac {
//@Id
//@GeneratedValue(generator = "uuid2")
//@GenericGenerator(name = "uuid2",strategy = "uuid2")
//@Column(name = "id",columnDefinition = "uniqueidentifier default newid()")
//private UUID id;
//    @Column(name = "name_")
//    private String name_ ;
//    private String create_by;
//    private Date create_date;
//    private Date  last_modifeed_date;
//    private  Boolean status_;
//    private String code;
//
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
