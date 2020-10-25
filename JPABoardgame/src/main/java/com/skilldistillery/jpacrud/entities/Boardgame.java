package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Boardgame {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	
	@Column(name="min_players")
	private int minPlayers;

	@Column(name="max_players")
	private int maxPlayers;
	
	@Column(name="play_time")
	private int playTime;
	
	private String category;
	
	@Column(name="house_rules")
	private String houseRules;
	private double cost;
	
	@Column(name="release_year")
	private int releaseYear;
	
	public Boardgame() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getMinPlayers() {
		return minPlayers;
	}

	public void setMinPlayers(int minPlayers) {
		this.minPlayers = minPlayers;
	}

	public int getMaxPlayers() {
		return maxPlayers;
	}

	public void setMaxPlayers(int maxPlayers) {
		this.maxPlayers = maxPlayers;
	}

	public int getPlayTime() {
		return playTime;
	}

	public void setPlayTime(int playTime) {
		this.playTime = playTime;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getHouseRules() {
		return houseRules;
	}

	public void setHouseRules(String houseRules) {
		this.houseRules = houseRules;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public int getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Boardgame [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", description=");
		builder.append(description);
		builder.append(", minPlayers=");
		builder.append(minPlayers);
		builder.append(", maxPlayers=");
		builder.append(maxPlayers);
		builder.append(", playTime=");
		builder.append(playTime);
		builder.append(", category=");
		builder.append(category);
		builder.append(", houseRules=");
		builder.append(houseRules);
		builder.append(", cost=");
		builder.append(cost);
		builder.append(", releaseYear=");
		builder.append(releaseYear);
		builder.append("]");
		return builder.toString();
	}

}
