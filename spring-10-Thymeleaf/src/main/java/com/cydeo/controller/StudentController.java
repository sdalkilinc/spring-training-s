package com.cydeo.controller;

import com.cydeo.bootstrap.DataGenerator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    //@RequestParam version (look at the end point)
    @RequestMapping("/welcome") //localhost:9090/student/welcome?name=ozzy
    public String welcome(@RequestParam String name){

        return "student/welcome";

    }

    //@PathVariable version (look at the end point)
    @RequestMapping("/welcome/{name}") //localhost:9090/student/welcome/ozzy
    public String welcome2(@PathVariable String name){

        return "student/welcome";

    }
}
