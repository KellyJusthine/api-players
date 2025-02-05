package player.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import player.entity.Player;

import java.util.Optional;

public interface PlayerRepository extends JpaRepository<Player, String> {

    void deleteByName (String playerName);

    Optional<Player> findByName(String name);
}
