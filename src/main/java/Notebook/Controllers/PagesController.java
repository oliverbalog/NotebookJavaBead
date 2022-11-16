package Notebook.Controllers;

import Notebook.Models.Gep;
import Notebook.Repositories.GepRepository;
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
    @Autowired
    private GepRepository gepRepository;

    @GetMapping("/machines")
    public String machinesPage(Model model){
        model.addAttribute("notebooks",gepRepository.findAll());
        model.addAttribute("page","machines");

        return "layout";
    }

    @GetMapping("/users")
    public String tesztPage(Model model){
        model.addAttribute("users", userRepository.findAll());
        return "teszt";
    }

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
