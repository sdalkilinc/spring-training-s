package com.cydeo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@NoArgsConstructor
@Data
public class Car {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    //if we want to postgres to create a unique id, then we need to add @GeneratedValue annotation
    private Long id;
    private String make;
    private String model;

    public Car(String make, String model) {
        //we did not add id in the constructor, bc postgres will add it,
        // that is why, we also don't add @AllArgsConstructor too
        this.make = make;
        this.model = model;
    }
}
