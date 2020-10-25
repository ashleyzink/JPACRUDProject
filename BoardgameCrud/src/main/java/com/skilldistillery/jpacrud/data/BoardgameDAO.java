package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Boardgame;

public interface BoardgameDAO {
	
	Boardgame findById(int id);
	
	List<Boardgame> findAll();
	
	List<Boardgame> findGameByKeyword(Boardgame boardgame);
	
	Boardgame addGame(Boardgame boardgame);
	
	Boardgame updateGame(Boardgame boardgame);
	
	boolean deleteGame(Boardgame boardgame);
	
	

}
