package Notebook.Controllers;

import Notebook.Repositories.ContactRepository;
import Notebook.Repositories.GepRepository;
import Notebook.Repositories.UserRepository;
import Notebook.Models.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;
import java.util.*;

@Controller
public class PagesController {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private GepRepository gepRepository;

    @Autowired
    private ContactRepository contactRepository;

    @GetMapping("/contacts")
    public String contactsListPage(Model model)
    {

        var contacts = contactRepository.findAll();
        List<Contact> contactsList = new ArrayList<Contact>();
        contacts.forEach(x->{
            try{
                var u = userRepository.findByEmail(x.getEmail()).get();
            }
            catch (NoSuchElementException e){
                x.setName("Vendég");
            }
            contactsList.add(x);
        });
        contactsList.sort(Comparator.comparing(o -> o.getDate(), Comparator.reverseOrder()));

        model.addAttribute("page","contacts");
     model.addAttribute("contacts",contactsList);

     return "layout";
    }

    @GetMapping("/contact")
    public String contactPage(Model model){
        var contact = new Contact();
        contact.setName("Guest");
        model.addAttribute("page","contact");
        model.addAttribute("contact", contact);

        return "layout";
    }
    @PostMapping("/contact")
    public String contactSubmit(@ModelAttribute Contact contact, Model model, Principal principal){
        if(principal != null) {
            var user = userRepository.findByUsername(principal.getName());
            contact.setEmail(user.get().getEmail());
            contact.setName(user.get().getFirstname()+" "+user.get().getLastname());
        }
        contact.setDate(new Date());

        model.addAttribute("contact", contact);

        model.addAttribute("component", "contact");
        model.addAttribute("page","contact");

        if (contact.getName() == null || contact.getName().length()<5){
            model.addAttribute("error", "The name given is not valid!");
            return "layout";
        }
        if (contact.getEmail() == null || contact.getEmail().length()<5){
            model.addAttribute("error", "The email given is not valid!");
            return "layout";
        }
        if (contact.getAddress() == null || contact.getAddress().length()<5){
            model.addAttribute("error", "The address given is not valid!");
            return "layout";
        }
        if (contact.getMessage() == null || contact.getMessage().length()<5){
            model.addAttribute("error", "The message is not valid!");
            return "layout";
        }

        contactRepository.save(contact);

        model.addAttribute("error","");
        return "layout";
    }

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

    @GetMapping("/admin")
    public String adminPage(Principal principal, Model model){

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
