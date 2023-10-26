package com.example.demo.model;

import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "account")
public class Account {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2",strategy = "uuid2")
    @Column(name = "id",columnDefinition = "uniqueidentifier default newid()")
    private UUID id;

    @Column(name = "create_by")
    private String createdBy;

    @Column(name = "created_date")
    private Date createdDate;

    @Column(name = "last_modified_date")
    private Date lastModifiedDate;

    @Column(name = "update_by")
    private String updateBy;

    @Column(name = "avata")
    private String avata;

    @Column(name = "citizen_identity")
    private Integer citizenIdentity;

    @Column(name = "date_of_birth")
    private Date dateOfBirth;

    @Column(name = "email")
    private String email;

    @Column(name = "full_name")
    private String fullName;

    @Column(name = "gender")
    private Integer gender;

    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "points")
    private Integer points;

    @Column(name = "status_")
    private Integer status;

    @ManyToOne
    @JoinColumn(name = "id_role")
    private Role role;

    @Column(name = "address_")
    private String address;

    // Getters and setters
}

