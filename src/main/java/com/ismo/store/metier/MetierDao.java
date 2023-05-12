package com.ismo.store.metier;

import java.awt.Image;
import java.util.List;

import com.ismo.store.dao.DaoCategorie;
import com.ismo.store.dao.IDao;
import com.ismo.store.models.Categorie;

public class MetierDao implements IMetier<Categorie> {
	
	IDao<Categorie> dao = new DaoCategorie();

	@Override
	public List<Categorie> getAll() {
		// TODO Auto-generated method stub
		return dao.getAll();
	}

	@Override
	public boolean save(Categorie obj) {
		// TODO Auto-generated method stub
		return dao.save(obj);
	}
	
	

}
