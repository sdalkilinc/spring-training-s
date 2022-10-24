package com.cydeo.controller;

import com.cydeo.bootstrap.DataGenerator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
//if you put @RequestMapping in the class level, then it is concatenate
//and we don't need to put "/student" in the method level before the end point that we determine
public class StudentController {

    @RequestMapping("/register") //localhost:8080/student/register
    public String register(Model model){
//If you want to see some objects in here, we need to call Model class inside the method

        model.addAttribute("students", DataGenerator.createStudent());

        return "student/register";
    }

    @RequestMapping("/welcome") //localhost:9090/student/welcome
    public String welcome(){

        return "student/welcome";

    }
}
