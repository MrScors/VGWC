package vgwc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vgwc.model.Hero;
import vgwc.repos.HeroRepo;
import vgwc.service.CounterPickingService;
import java.util.*;

@Controller
@RequestMapping("/counter_picking")
public class CounterPickingController {
    @Autowired
    HeroRepo heroRepo;

    @GetMapping
    public String showingHeroes(Model model) {
        // sorting by name and showing list of all heroes
        model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());
        return "counter_picking";
    }

    @PostMapping
    public String counterPick(@RequestParam Map<String, String> form, Model model) {
        Map<String, List<Hero>> teams = CounterPickingService.counterPick(form, heroRepo.findByOrderByNameAsc());
        if(teams.containsKey("enemyHeroes") && teams.get("enemyHeroes").size()>5){
            model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());
            model.addAttribute("errorMessage", "Select up to 5 enemy heroes");
            return "counter_picking";
        }
        if(teams.containsKey("allyHeroes") && teams.get("allyHeroes").size()>4){
            model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());
            model.addAttribute("errorMessage", "Select up to 4 ally heroes");
            return "counter_picking";
        }
        for(String k : teams.keySet()){
            model.addAttribute(k, teams.get(k));
        }
        return "counter_picking";
    }

}
