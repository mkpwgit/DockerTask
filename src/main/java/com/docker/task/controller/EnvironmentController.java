package com.docker.task.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/environment")
public class EnvironmentController {

    @RequestMapping("/name")
    public String getDevopsName() {
        return System.getenv("DEVOPS");
    }
}
