package org.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class GreetingLambda {
    @Autowired
    GreetingService service;

    @RequestMapping(path = "/greeting/{name}", method = RequestMethod.GET, produces = "text/plain")
    public String greeting(@PathVariable(name = "name") String name) {
        return service.greeting(name);
    }
}
