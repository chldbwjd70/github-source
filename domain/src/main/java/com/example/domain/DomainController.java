package com.example.domain;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="githubsource")
public class DomainController {
    @GetMapping("/hello")
    public String hello() {
        return "Hello SourceAPP";
    }

    @GetMapping("/goodBye")
    public String goodBye() {
        return "GoodBye SourceAPP";
    }
}
