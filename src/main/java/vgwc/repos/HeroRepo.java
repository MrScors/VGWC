package vgwc.repos;

import org.springframework.data.repository.CrudRepository;
import vgwc.model.Hero;

import java.util.List;

public interface HeroRepo extends CrudRepository<Hero, Integer> {
    Hero findByName(String name);
    Hero findAllById(Integer id);
    List<Hero> findAll();
    List<Hero> findByOrderByNameAsc();
}
