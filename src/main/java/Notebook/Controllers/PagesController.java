package Notebook.Controllers;

import Notebook.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@Controller
public class PagesController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/admin/")
    public String adminPage(Model model){
        model.addAttribute("page","admin");
        return "layout";
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

    @GetMapping("/login")
    public String loginPage(Model model, Principal principal) {

        if (principal != null) {
            return homePage(model);
        }

        model.addAttribute("page","login");

        return "layout";
    }
}
