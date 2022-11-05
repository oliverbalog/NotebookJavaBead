package Notebook.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PagesController {
    @GetMapping()
    public String homePage(Model model){
        model.addAttribute("page","home");
        return "layout";
    }

    @GetMapping("/about")
    public String aboutPage(Model model){
        model.addAttribute("page","about");
        return "layout";
    }
    
}