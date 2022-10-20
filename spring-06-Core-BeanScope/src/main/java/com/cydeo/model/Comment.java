package com.cydeo.model;

import lombok.Data;

@Data
public class Comment { //we never put @Component to any model or entity classes
    private String author;
    private String text;

}
