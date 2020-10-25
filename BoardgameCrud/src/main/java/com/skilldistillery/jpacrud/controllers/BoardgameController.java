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
	
	@RequestMapping(path = "updateGame.do", method = RequestMethod.POST )
	public String updateGame(Boardgame bgame, Model model) {
		Boardgame updateGame = bgameDAO.updateGame(bgame);
		model.addAttribute("game", updateGame);
		return "/WEB-INF/boardgame/GameDetailDisplay.jsp";
	}
	
	@RequestMapping(path = "redirToUpdate.do", method = RequestMethod.GET)
	public String redirToUpdate(Integer id, Model model) {
		model.addAttribute("game", bgameDAO.findById(id));
		return "/WEB-INF/boardgame/UpdateGame.jsp";
	}
	
	@RequestMapping(path = "deleteGame.do", method = RequestMethod.POST)
	public String deleteGame(Integer id, RedirectAttributes redir) {
		bgameDAO.deleteGame(id);
		return("redirect:gameDeleted.do");
	}
	
	@RequestMapping(path = "gameDeleted.do", method = RequestMethod.GET)
	public String deleted() {
		return "/WEB-INF/boardgame/Deleted.jsp";
	}

}
