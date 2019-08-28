package vgwc.service;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import vgwc.repos.HeroRepo;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import static org.junit.Assert.assertEquals;

public class CounterPickingServiceTest {

    @Autowired
    HeroRepo heroRepo;

    @ParameterizedTest
    @ValueSource(strings = {"AdagioEnemy Skye Blackfeather Fortress"})
    public void counterPick(String string) {
        Map<String, String> form = new HashMap<>();
        String[] splintedString = string.split(" ");
        for (int i = 0; i < splintedString.length-3; i++) {
            form.put(splintedString[i], "");
        }
        Set<String> actual = new CounterPickingService().counterPick(form, heroRepo.findAll()).keySet();
        Set<String> expected = new HashSet();
        for (int i = splintedString.length-3; i < splintedString.length; i++) {
            expected.add(splintedString[i]);
        }

        assertEquals(actual, expected);
    }
}
