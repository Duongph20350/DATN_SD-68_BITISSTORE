package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "orgin")

public class XuatXu {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id")
    private UUID id;
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    @Column(name = "name_")
    private String name_ ;
=======
=======
>>>>>>> Stashed changes
    @Column(name = "name")
    private String name ;
    @Column(name = "create_by")
>>>>>>> Stashed changes
    private String create_by;
    private Date create_date;
    private Date  last_modifeed_date;
    private Integer status_;

    public XuatXu() {
    }

    public XuatXu(UUID id, String name_, String create_by, Date create_date, Date last_modifeed_date, Integer status_) {
        this.id = id;
        this.name_ = name_;
        this.create_by = create_by;
        this.create_date = create_date;
        this.last_modifeed_date = last_modifeed_date;
        this.status_ = status_;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getName_() {
        return name_;
    }

    public void setName_(String name_) {
        this.name_ = name_;
    }

    public String getCreate_by() {
        return create_by;
    }

    public void setCreate_by(String create_by) {
        this.create_by = create_by;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Date getLast_modifeed_date() {
        return last_modifeed_date;
    }

    public void setLast_modifeed_date(Date last_modifeed_date) {
        this.last_modifeed_date = last_modifeed_date;
    }

    public Integer getStatus_() {
        return status_;
    }

    public void setStatus_(Integer status_) {
        this.status_ = status_;
    }
}

