package dev.guilder.midtermexam.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class publicPages {
    @GetMapping({"/","/home","/homePage"})
    public String HomePage() {
        return "publicPages/homePage";
    }

    @GetMapping({"/about","/aboutPage"})
    public String AboutPage() {
        return "publicPages/aboutPage";
    }
}
