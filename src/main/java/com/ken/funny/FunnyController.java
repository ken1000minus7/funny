package com.ken.funny;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FunnyController {

    @GetMapping("/")
    public String funny(Model model) {
        model.addAttribute("message", "Hello World");
        return "funny";
    }
}
