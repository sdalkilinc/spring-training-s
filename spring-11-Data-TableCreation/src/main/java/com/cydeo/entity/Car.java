package com.cydeo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Car {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    //if we want to postgres to create a unique id, then we need to add @GeneratedValue annotation
    private Long id;
    private String make;
    private String model;

}
