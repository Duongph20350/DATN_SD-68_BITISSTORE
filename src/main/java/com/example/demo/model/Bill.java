package com.example.demo.model;

import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "bill")
public class Bill {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2",strategy = "uuid2")
    @Column(name = "id",columnDefinition = "uniqueidentifier default newid()")
    private UUID id;

    @Column(name = "created_by", nullable = false)
    private String createdBy;

    @Column(name = "create_date")
    private Date createDate;

    @Column(name = "update_by")
    private String updateBy;

    @Column(name = "last_modified_date")
    private Date lastModifiedDate;

    @Column(name = "address_")
    private String address;

    @Column(name = "code")
    private String code;

    @Column(name = "item_discount")
    private String itemDiscount;

    @Column(name = "money_ship")
    private Double moneyShip;

    @Column(name = "note")
    private String note;

    @Column(name = "phone_number", length = 11)
    private String phoneNumber;

    @Column(name = "status_bill")
    private Integer statusBill;

    @Column(name = "money_")
    private Double money;

    @Column(name = "total_money")
    private Double totalMoney;

    @Column(name = "type_")
    private String type;

    @Column(name = "user_names")
    private String userNames;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private Account user;

    // Getters and setters
}
