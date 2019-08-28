package vgwc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import vgwc.model.Hero;
import vgwc.repos.HeroRepo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class HeroController {

    @Autowired
    HeroRepo heroRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/hero")
    public String heroList(Model model) {
        model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());
        return "heroList";
    }

    @GetMapping("/hero/{hero}")
    public String userEditForm(@PathVariable Hero hero, Model model){
        model.addAttribute("hero", hero);
        model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());
        return "heroEdit";
    }

    @GetMapping("/hero/{hero}/uploadHeroImages")
    public String uploadHeroImagesPage(@PathVariable Hero hero, Model model){
        model.addAttribute("hero", hero);
        return "uploadHeroImages";
    }

    @PostMapping("/uploadHeroImages")
    public String uploadHeroImages(
            @RequestParam Integer heroId,
            @RequestParam("picture") MultipartFile picture,
            @RequestParam("picture_prev") MultipartFile picturePrev,
            Model model) throws IOException {

        Hero hero = heroRepo.findAllById(heroId);

        String resultFilename = getFileUuid(picture);
        picture.transferTo(new File(uploadPath + "/" + resultFilename));
        hero.setPictureName(resultFilename);

        resultFilename = getFileUuid(picturePrev);
        picturePrev.transferTo(new File(uploadPath + "/" + resultFilename));
        hero.setPicturePrevName(resultFilename);

        heroRepo.save(hero);
        model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());
        return "heroList";
    }

    private String getFileUuid(MultipartFile file) {
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        String uuidFile = UUID.randomUUID().toString();
        return uuidFile + "." + file.getOriginalFilename();
    }

    @PostMapping("/hero")
    public String heroUpdate(

            @RequestParam String name,
            @RequestParam String awfulAgainst,
            @RequestParam String veryBadAgainst,
            @RequestParam String badAgainst,
            @RequestParam String notGoodAgainst,
            @RequestParam String perfectAgainst,
            @RequestParam String veryGoodAgainst,
            @RequestParam String goodAgainst,
            @RequestParam String niceAgainst,
            @RequestParam String perfectWith,
            @RequestParam String veryGoodWith,
            @RequestParam String goodWith,
            @RequestParam String niceWith,
            @RequestParam("heroId") Hero hero, Model model) {

        model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());

        if (name.isEmpty() || awfulAgainst.isEmpty() || veryBadAgainst.isEmpty() || badAgainst.isEmpty() ||
                notGoodAgainst.isEmpty() || niceAgainst.isEmpty() || goodAgainst.isEmpty() ||
                perfectWith.isEmpty() || veryGoodAgainst.isEmpty() && perfectAgainst.isEmpty() ||
                niceWith.isEmpty() || goodWith.isEmpty() || veryGoodWith.isEmpty()) {

            model.addAttribute("errorMessage", "All fields must be felt");
            return "heroList";
        }

        updateHero(name, awfulAgainst, veryBadAgainst, badAgainst,
                notGoodAgainst, perfectAgainst, veryGoodAgainst,
                goodAgainst, niceAgainst, perfectWith, veryGoodWith,
                goodWith, niceWith, hero);

        heroRepo.save(hero);
        return "heroList";

    }

    @GetMapping("/newHero")
    public String newHeroCreate(Model model) {
        model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());
        return "newHero";
    }

    @PostMapping("/heroDelete")
    public String userDelete(@RequestParam("heroId") Hero hero){
        heroRepo.deleteById(hero.getId());
        return"redirect:/hero";
    }

    @PostMapping("/newHero")
    public String newHeroSave(
            @RequestParam("picture") MultipartFile picture,
            @RequestParam("picture_prev") MultipartFile picturePrev,
            @RequestParam String name,
            @RequestParam String awfulAgainst,
            @RequestParam String veryBadAgainst,
            @RequestParam String badAgainst,
            @RequestParam String notGoodAgainst,
            @RequestParam String perfectAgainst,
            @RequestParam String veryGoodAgainst,
            @RequestParam String goodAgainst,
            @RequestParam String niceAgainst,
            @RequestParam String perfectWith,
            @RequestParam String veryGoodWith,
            @RequestParam String goodWith,
            @RequestParam String niceWith, Model model) throws IOException {

        if (awfulAgainst.isEmpty() || veryBadAgainst.isEmpty() || badAgainst.isEmpty() ||
                notGoodAgainst.isEmpty() || niceAgainst.isEmpty() || goodAgainst.isEmpty() ||
                perfectWith.isEmpty() || veryGoodAgainst.isEmpty() && perfectAgainst.isEmpty() ||
                niceWith.isEmpty() || goodWith.isEmpty() || veryGoodWith.isEmpty()) {

            model.addAttribute("errorMessage", "All fields must be felt");
            model.addAttribute("heroes", heroRepo.findByOrderByNameAsc());
            return "newHero";
        }

        Hero hero;
        hero = new Hero();

        updateHero(name, awfulAgainst, veryBadAgainst, badAgainst,
                notGoodAgainst, perfectAgainst, veryGoodAgainst,
                goodAgainst, niceAgainst, perfectWith, veryGoodWith,
                goodWith, niceWith, hero);

        String resultFilename = getFileUuid(picture);
        picture.transferTo(new File(uploadPath + "/" + resultFilename));
        hero.setPictureName(resultFilename);

        resultFilename = getFileUuid(picturePrev);
        picturePrev.transferTo(new File(uploadPath + "/" + resultFilename));
        hero.setPicturePrevName(resultFilename);

        heroRepo.save(hero);
        return "redirect:/hero";

    }

    private void updateHero(String name, String awfulAgainst, String veryBadAgainst,
                            String badAgainst, String notGoodAgainst, String perfectAgainst,
                            String veryGoodAgainst, String goodAgainst,  String niceAgainst,
                            String perfectWith, String veryGoodWith, String goodWith, String niceWith,
                            Hero hero) {
        hero.setName(name);
        hero.setAwfulAgainst(awfulAgainst);
        hero.setVeryBadAgainst(veryBadAgainst);
        hero.setBadAgainst(badAgainst);
        hero.setNotGoodAgainst(notGoodAgainst);
        hero.setPerfectAgainst(perfectAgainst);
        hero.setVeryGoodAgainst(veryGoodAgainst);
        hero.setGoodAgainst(goodAgainst);
        hero.setNiceAgainst(niceAgainst);
        hero.setPerfectWith(perfectWith);
        hero.setVeryGoodWith(veryGoodWith);
        hero.setGoodWith(goodWith);
        hero.setNiceWith(niceWith);
    }

}
