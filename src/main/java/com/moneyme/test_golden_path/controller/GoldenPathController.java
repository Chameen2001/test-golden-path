package com.moneyme.test_golden_path.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GoldenPathController {

    @GetMapping("/goldenPath")
    public String getGoldenPath() {
        return "goldenPath";
    }
}
