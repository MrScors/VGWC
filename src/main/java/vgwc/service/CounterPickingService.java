package vgwc.service;

import vgwc.model.Hero;
import vgwc.repos.HeroRepo;

import java.util.*;

public class CounterPickingService {

    private static final int NUMBER_OF_HEROES_PLUS_ONE = 43;
    private static final int NUMBER_OF_RECOMMENDED_HEROES = 5;

    public static Map<String, List<Hero>> counterPick(Map<String, String> form, List<Hero> heroes) {

        // parsing form into teams

        Map<String, List<Hero>> map = parsingIntoTeams(form, heroes);

        if(map.get("enemyHeroes").size()>5 || map.get("allyHeroes").size()>4){
            return map;
        }

        if(map.get("enemyHeroes").isEmpty()) {
            map.remove("enemyHeroes");
        }
        if(map.get("allyHeroes").isEmpty()) {
            map.remove("allyHeroes");
        }

        // rating heroes

        int[] heroesRating = ratingHeroes(map, heroes);

        // searching for best heroes

        map.put("recommendedHeroes", searchingForRecommended(heroesRating, heroes));

        return map;
    }

    private static Map<String, List<Hero>> parsingIntoTeams(Map<String, String> form, List<Hero> heroes) {
        List<Hero> enemyTeam = new ArrayList<>();
        List<Hero> allyTeam = new ArrayList<>();
        Set<String> heroesInString = form.keySet();
        for (String hero : heroesInString) {
            if (hero.contains("Enemy")) {
                int sideIndex = hero.indexOf("Enemy");
                enemyTeam.add(findHeroByName(heroes, hero.substring(0, sideIndex)));
            }
            if (hero.contains("Ally")) {
                int sideIndex = hero.indexOf("Ally");
                allyTeam.add(findHeroByName(heroes, hero.substring(0, sideIndex)));
            }
        }

        Map<String, List<Hero>> map = new HashMap<>();
        map.put("enemyHeroes", enemyTeam);
        map.put("allyHeroes", allyTeam);
        return map;

    }

    private static int[] ratingHeroes(Map<String, List<Hero>> map, List<Hero> heroes) {
        int[] heroesRating = new int[NUMBER_OF_HEROES_PLUS_ONE];
        if(map.containsKey("enemyHeroes")){
            for (Hero enemy : map.get("enemyHeroes")) {
                heroesRating[findHeroByName(heroes, enemy.getAwfulAgainst()).getId()] += 4;
                heroesRating[findHeroByName(heroes, enemy.getVeryBadAgainst()).getId()] += 3;
                heroesRating[findHeroByName(heroes, enemy.getBadAgainst()).getId()] += 2;
                heroesRating[findHeroByName(heroes, enemy.getNotGoodAgainst()).getId()] += 1;

                heroesRating[findHeroByName(heroes, enemy.getPerfectAgainst()).getId()] -= 4;
                heroesRating[findHeroByName(heroes, enemy.getVeryGoodAgainst()).getId()] -= 3;
                heroesRating[findHeroByName(heroes, enemy.getGoodAgainst()).getId()] -= 2;
                heroesRating[findHeroByName(heroes, enemy.getNiceAgainst()).getId()] -= 1;
            }
        }
        if(map.containsKey("allyHeroes")){
            for (Hero ally : map.get("allyHeroes")) {
                heroesRating[findHeroByName(heroes, ally.getPerfectWith()).getId()] += 4;
                heroesRating[findHeroByName(heroes, ally.getVeryGoodWith()).getId()] += 3;
                heroesRating[findHeroByName(heroes, ally.getGoodWith()).getId()] += 2;
                heroesRating[findHeroByName(heroes, ally.getNiceWith()).getId()] += 1;
            }
        }
        return heroesRating;
    }

    private static List<Hero> searchingForRecommended(int[] heroesRating, List<Hero> heroes) {
        List<Hero> recommended = new ArrayList<>();
        int[] indexes = new int[NUMBER_OF_RECOMMENDED_HEROES];

        for (int i = 0; i < NUMBER_OF_RECOMMENDED_HEROES; i++) {
            indexes[i] = findBestHero(heroesRating);
            heroesRating[indexes[i]] = 0;
        }

        for (int i = 0; i < NUMBER_OF_RECOMMENDED_HEROES; i++) {
            if (indexes[i] != 0) {
                recommended.add(findHeroById(heroes, indexes[i]));
            }
        }

        return recommended;

    }

    private static int findBestHero(int[] heroesRating) {
        int index = 0;
        for (int i = 0; i < NUMBER_OF_HEROES_PLUS_ONE; i++) {
            if (heroesRating[i] > heroesRating[index]) {
                index = i;
            }
        }
        return index;
    }

    private static Hero findHeroByName(List<Hero> heroes, String name){
        for(Hero hero : heroes){
            if(hero.getName().equals(name)){
                return hero;
            }
        }
        return null;
    }

    private static Hero findHeroById(List<Hero> heroes, Integer id){
        for(Hero hero : heroes){
            if(hero.getId().equals(id)){
                return hero;
            }
        }
        return null;
    }


}
