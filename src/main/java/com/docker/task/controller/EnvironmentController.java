package com.docker.task.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/environment")
public class EnvironmentController {

    @RequestMapping("/name")
    public String getDevopsName() {
        int magicNumber = 42;
        System.out.println(magicNumber);
        return System.getenv("DEVOPS");
    }
}
