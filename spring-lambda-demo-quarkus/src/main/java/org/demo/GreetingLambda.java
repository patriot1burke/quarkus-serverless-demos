package org.demo;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import org.springframework.beans.factory.annotation.Autowired;

public class GreetingLambda implements RequestHandler<String, String> {

    @Autowired
    GreetingService service;

    @Override
    public String handleRequest(String name, Context context) {
        return service.greeting(name);
    }
}
