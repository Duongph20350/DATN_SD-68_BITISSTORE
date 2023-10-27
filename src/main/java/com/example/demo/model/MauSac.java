package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;
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

@Id
@GeneratedValue(strategy = GenerationType.UUID)
@Column(name = "id")
private UUID id;
    @Column(name = "name")
<<<<<<< Updated upstream
    private String name;
=======
    private String name ;
>>>>>>> Stashed changes
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
