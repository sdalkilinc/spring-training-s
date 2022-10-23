package com.cydeo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
//if you put @RequestMapping in the class level, then it is concatenate
//and we don't need to put "/student" in the method level before the end point that we determine
public class StudentController {

    @RequestMapping("/register") //localhost:8080/student/register
    public String register(){

        return "student/register";

    }

    @RequestMapping("/drop") //localhost:8080/student/drop
    public String drop(){

        return "student/register";

    }
}
