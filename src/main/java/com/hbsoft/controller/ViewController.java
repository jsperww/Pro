package com.hbsoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ViewController {
    @GetMapping("{page}")
    public String open(@PathVariable("page") String page){return page;}
    @GetMapping("/")
    public String index(){return "index";}
}
