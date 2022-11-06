package Notebook.Controllers;

import Notebook.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PagesController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("users")
    public String GetUsers(Model model){
        model.addAttribute("users",userRepository.findAll());
        return "teszt";
    }

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
