package com.ismo.store.dao;

import java.util.List;

public interface IDao<T> {
	
	List<T> getAll();

}
