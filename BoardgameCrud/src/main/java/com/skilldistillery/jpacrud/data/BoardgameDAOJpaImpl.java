package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Boardgame;

@Transactional
@Service
public class BoardgameDAOJpaImpl implements BoardgameDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Boardgame findById(int id) {
		return em.find(Boardgame.class, id);
	}

	@Override
	public List<Boardgame> findAll() {
		String jpql = "SELECT game FROM Boardgame game";
		return em.createQuery(jpql, Boardgame.class).getResultList();

	}
	
	@Override
	public List<Boardgame> findGameByKeyword(Boardgame boardgame) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boardgame addGame(Boardgame boardgame) {
		em.persist(boardgame);
		em.flush();
		return boardgame;
	}


	@Override
	public Boardgame updateGame(Boardgame boardgame) {
		Boardgame updateGame = em.find(Boardgame.class, boardgame.getId());
		updateGame.setName(boardgame.getName());
		updateGame.setDescription(boardgame.getDescription());
		updateGame.setMinPlayers(boardgame.getMinPlayers());
		updateGame.setMaxPlayers(boardgame.getMaxPlayers());
		updateGame.setPlayTime(boardgame.getPlayTime());
		updateGame.setCategory(boardgame.getCategory());
		updateGame.setHouseRules(boardgame.getHouseRules());
		updateGame.setCost(boardgame.getCost());
		updateGame.setReleaseYear(boardgame.getReleaseYear());
		em.flush();
		return boardgame;
	}

	@Override
	public boolean deleteGame(Boardgame boardgame) {
		// TODO Auto-generated method stub
		return false;
	}

}
