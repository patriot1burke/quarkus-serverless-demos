package org.demo.spring.mvc;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@RestController
@EnableWebMvc
public class GreetingLambda {
    @Autowired
    GreetingService service;

    @RequestMapping(path = "/greeting/{name}", method = RequestMethod.GET, produces = "text/plain")
    public String greeting(@PathVariable(name = "name") String name) {
        return service.greeting(name);
    }
}
