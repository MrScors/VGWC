package vgwc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vgwc.model.Role;
import vgwc.model.User;
import vgwc.repos.UserRepo;

import java.util.Collections;
import java.util.Map;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping
    public String registration(Map<String, Object> model) {
        return "registration";
    }

    @PostMapping
    public String register(User user, Map<String, Object> model) {
        if (userRepo.findByUsername(user.getUsername()) != null) {
            model.put("errorMessage", "User with such name already exists");
            return "registration";
        }
        if(userRepo.findByEmail(user.getEmail()) != null){
            model.put("errorMessage", "User with such email already exists");
            return "registration";
        }

        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);

        return "redirect:/login";
    }
}
