package vgwc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FooterController {

    @GetMapping("/tech_support")
    public String techSupportPage(){
        return "/tech_support";
    }
    @GetMapping("/finance_support")
    public String financeSupportPage(){
        return "/finance_support";
    }
}
