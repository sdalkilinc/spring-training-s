package com.cydeo.entity;


import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "regions")
public class Region extends BaseEntity {

    private String region;
    private String country;


}
