package com.cydeo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CarController {

    //localhost:8080/info?make=Honda
    @RequestMapping("/info")
    public String carInfo(@RequestParam String make, Model model){

        model.addAttribute("make", make);
        return "car/car-info";
    }

    //localhost:8080/info2 (KIA), bc we set "KIA" as default value
    @RequestMapping("/info2") //If you put () near requestparam, then you can set a default value
    public String carInfo2(@RequestParam(value = "make", required = false, defaultValue = "KIA") String make, Model model){

        model.addAttribute("make", make);
        return "car/car-info";
    }

    //localhost:8080/info3?make=Honda&year=2015
    @RequestMapping("/info")
    public String carInfo3(@RequestParam String make, @RequestParam int year, Model model){

        model.addAttribute("make", make);
        model.addAttribute("year", year);
        return "car/car-info";
    }


}
