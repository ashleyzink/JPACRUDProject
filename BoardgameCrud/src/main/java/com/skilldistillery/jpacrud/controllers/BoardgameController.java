package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.BoardgameDAO;
import com.skilldistillery.jpacrud.entities.Boardgame;

@Controller
public class BoardgameController {
	
	@Autowired
	private BoardgameDAO bgameDAO;
	
	@RequestMapping(path="/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Boardgame> gameList = bgameDAO.findAll();
		model.addAttribute("games", gameList);
		return "/WEB-INF/index.jsp";
	}
	
	@RequestMapping(path="getGame.do", method = RequestMethod.GET)
	public String showGameByID(Integer gid, Model model) {
		Boardgame game = bgameDAO.findById(gid);
		model.addAttribute("game", game);
		return "/WEB-INF/boardgame/GameDetailDisplay.jsp";
	}
	
	@RequestMapping(path = "addGame.do", method = RequestMethod.POST)
	public String addGame(Boardgame boardgame, Model model, RedirectAttributes redir) {
		Boardgame bgame = bgameDAO.addGame(boardgame);
		redir.addFlashAttribute("game", bgame);
		return "redirect:gameAdded.do";
	}
	@RequestMapping(path = "gameAdded.do", method = RequestMethod.GET)
	public String addGameRedir() {
		return "/WEB-INF/boardgame/GameDetailDisplay.jsp";
	}
	@RequestMapping(path = "newGameForm.do", method = RequestMethod.GET)
	public String redirToNewGameForm() {
		return "/WEB-INF/boardgame/NewGame.jsp";
	}
	

}
