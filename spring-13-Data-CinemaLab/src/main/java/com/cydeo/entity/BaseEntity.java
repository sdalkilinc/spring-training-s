package com.cydeo.entity;

import javax.persistence.*;

@MappedSuperclass//if you don't want to create any table from a class and want to use as a parent, then use this annotation
public class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


}
