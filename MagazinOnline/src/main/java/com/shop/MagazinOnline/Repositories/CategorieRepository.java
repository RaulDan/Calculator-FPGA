package com.shop.MagazinOnline.Repositories;

import com.shop.MagazinOnline.Piese.Categorie;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategorieRepository extends CrudRepository<Categorie,Long> {
}
