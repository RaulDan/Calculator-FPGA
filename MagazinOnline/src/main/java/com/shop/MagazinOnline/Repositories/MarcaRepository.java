package com.shop.MagazinOnline.Repositories;

import com.shop.MagazinOnline.Piese.Marca;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MarcaRepository extends CrudRepository<Marca,Long> {



}
