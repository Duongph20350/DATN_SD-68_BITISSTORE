package com.example.demo.model;

import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "role_")
public class Role {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2",strategy = "uuid2")
    @Column(name = "id",columnDefinition = "uniqueidentifier default newid()")
    private UUID id;

    @Column(name = "create_date")
    private Date createDate;

    @Column(name = "update_by")
    private String updateBy;

    @Column(name = "last_modifeed_date")
    private Date lastModifiedDate;

    @Column(name = "status_")
    private Integer status;

    @Column(name = "code")
    private String code;

    @Column(name = "name")
    private String name;

    // Constructors, getters and setters
}
