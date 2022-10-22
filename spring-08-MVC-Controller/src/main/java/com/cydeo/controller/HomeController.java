package com.cydeo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/home")  //for creating en point, we need request mapping
    public String home(){
        return "home.html";
    }


}
