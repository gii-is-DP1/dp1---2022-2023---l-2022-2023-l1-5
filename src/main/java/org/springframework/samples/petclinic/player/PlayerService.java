package org.springframework.samples.petclinic.player;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PlayerService {
    
    private PlayerRepository playerRepository;

    @Autowired
	public PlayerService(PlayerRepository playerRepository) {
		this.playerRepository = playerRepository;
	}

    public Player getPlayerByUserId(String userName){
        return playerRepository.findPlayerByUserId(userName);
    }

    public List<Player> getPlayersFromUserId(String username) {
        return playerRepository.findAllPlayersFromAUser(username);
    }
    @Transactional(readOnly = true)
    public List<Player> getAll(){
        return playerRepository.findAll();
    }
    public List<Player> getPlayersByUser(String username){
        return playerRepository.findPlayersByUser(username);
    }
    @Transactional
    public Player save(Player p){
        return playerRepository.save(p);
    }
}
