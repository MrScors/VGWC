package vgwc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vgwc.model.Role;
import vgwc.model.User;
import vgwc.repos.UserRepo;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class UserController {

    @Autowired
    UserRepo userRepo;

    @GetMapping("/user")
    public String userList(Model model){
        model.addAttribute("users", userRepo.findAll());
        return "userList";
    }

    @GetMapping("/user/{user}")
    public String userEditForm(@PathVariable User user, Model model){
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());
        return "userEdit";
    }

    @PostMapping("/userDelete")
    public String userDelete(@RequestParam("userId") User user){
        userRepo.deleteById(user.getId());
        return"redirect:/user";
    }

    @PostMapping("/userSave")
    public String userSave(
            @RequestParam String username,
            @RequestParam String email,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user){
        user.setUsername(username);
        user.setEmail(email);
        Set<String> roles = Arrays.stream(Role.values()).
                map(Role::name).
                collect(Collectors.toSet());

        user.getRoles().clear();

        for(String key : form.keySet()){
            if(roles.contains(key)){
                user.getRoles().add(Role.valueOf(key));
            }
        }
        userRepo.save(user);
        return "redirect:/user";
    }

}
