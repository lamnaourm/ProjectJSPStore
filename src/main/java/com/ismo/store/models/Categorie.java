package com.ismo.store.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_categorie")
public class Categorie {
	
	@Id
	private int id;
	
	@Column
	private String name;
	
	@Column
	private String image;
	
	@Column
	private String creationAt;
	
	@Column
	private String updatedAt;

	public Categorie() {

	}

	public Categorie(int id, String name, String image, String creationAt, String updatedAt) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.creationAt = creationAt;
		this.updatedAt = updatedAt;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCreationAt() {
		return creationAt;
	}

	public void setCreationAt(String creationAt) {
		this.creationAt = creationAt;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}

}
