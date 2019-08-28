package vgwc.repos;

import org.springframework.data.repository.CrudRepository;
import vgwc.model.User;

public interface UserRepo extends CrudRepository<User, Long> {
    User findByUsername(String username);
    User findByEmail(String email);
}
