package com.ismo.store.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ismo.store.models.Categorie;
import com.ismo.store.utils.HibernateUtils;

public class DaoCategorie implements IDao<Categorie>{

	@Override
	public List<Categorie> getAll() {
		Session s = HibernateUtils.getSessionfactory().getCurrentSession();
		Transaction t = s.beginTransaction();
				
		List<Categorie> cats = s.createQuery("from Categorie").list();
		
		t.commit();
		s.close();
							
		return cats;
	}

}
