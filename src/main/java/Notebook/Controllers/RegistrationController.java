package Notebook.Controllers;

import Notebook.Models.User;
import Notebook.Models.UserDto;
import Notebook.Services.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RegistrationController {
    @Autowired
    private CustomUserDetailsService userService;

    @PostMapping("/register")
    public String userRegistration(UserDto userDto, Model model)
    {
        model.addAttribute("user", userDto);

        try {
            User registered = userService.registerNewUserAccount(userDto);
        } catch (Exception e) {
            model.addAttribute("page", "register");
            model.addAttribute("error", e.getMessage());
            return "layout";
        }

        model.addAttribute("page", "login");
        return "layout";
    }
}
