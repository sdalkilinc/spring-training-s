package com.cydeo.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
//@ComponentScan(basePackages = "com.cydeo") we can use this one or the one below, both works
@ComponentScan(basePackages = {"com.cydeo.proxy", "com.cydeo.service", "com.cydeo.repository"})
public class CommentConfig {
}
