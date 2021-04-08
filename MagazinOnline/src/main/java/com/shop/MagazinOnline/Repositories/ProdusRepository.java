package com.shop.MagazinOnline.Repositories;

import com.shop.MagazinOnline.Piese.Produs;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProdusRepository extends CrudRepository<Produs,Long> {


}
