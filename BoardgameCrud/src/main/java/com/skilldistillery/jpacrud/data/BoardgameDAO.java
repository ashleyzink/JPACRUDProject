package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Boardgame;

public interface BoardgameDAO {
	
	Boardgame findById(int id);
	
	List<Boardgame> findAll();
	
	Boardgame addGame(Boardgame boardgame);
	
	

}
