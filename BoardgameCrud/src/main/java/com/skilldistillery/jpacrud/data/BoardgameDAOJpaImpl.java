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
	public Boardgame addGame(Boardgame boardgame) {
		em.persist(boardgame);
		em.flush();
		return boardgame;
	}

}
