package com.cydeo.controller;

import com.cydeo.dto.CourseDTO;
import com.cydeo.service.CourseService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/courses/api/v2")
public class CourseController_ResponseEntity {

    private final CourseService courseService;

    public CourseController_ResponseEntity(CourseService courseService) {
        this.courseService = courseService;
    }

    @GetMapping //if you want to create API end point, then we need to use ResponseEntity
    public ResponseEntity<List<CourseDTO>> getAllCourses(){
        return ResponseEntity
                .status(HttpStatus.ACCEPTED)
                .header("Version", "Cydeo.V2")
                .header("Operation", "Get List")
                .body(courseService.getCourses());
    }

    @GetMapping("{id}")
    public ResponseEntity<CourseDTO> getCourseById(@PathVariable("id") long courseId){
        return ResponseEntity.ok(courseService.getCourseById(courseId));
    }

    @GetMapping("category/{name}")
    public ResponseEntity<List<CourseDTO>> getCourseByCategory(@PathVariable("name") String category){
        return ResponseEntity.ok(courseService.getCoursesByCategory(category));
    }


}
