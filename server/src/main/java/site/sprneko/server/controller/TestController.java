package site.sprneko.server.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
public class TestController {
    @GetMapping("/api/hello")
    public String hello(){
        return "Hello Vue! 这里是 Spring Boot";
    }
}
