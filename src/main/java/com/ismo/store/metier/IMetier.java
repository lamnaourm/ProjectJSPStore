package com.ismo.store.metier;

import java.util.List;

public interface IMetier<T> {

	List<T> getAll();
}
