package vgwc.repos;

import org.springframework.data.repository.CrudRepository;
import vgwc.model.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Integer> {
    List<Message> findByTag(String tag);
}
