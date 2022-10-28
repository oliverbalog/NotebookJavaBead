package Notebook.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PagesController {
    @GetMapping()
    public String homePage(Model model){
        model.addAttribute(model);
        return "homepage";
    }
    
}
