package com.shop.MagazinOnline;

import com.shop.MagazinOnline.Piese.Categorie;
import com.shop.MagazinOnline.Piese.Produs;
import com.shop.MagazinOnline.Repositories.CategorieRepository;
import com.shop.MagazinOnline.Repositories.MarcaRepository;
import com.shop.MagazinOnline.Repositories.ProdusRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class MagazinOnlineApplication {

	public static void main(String[] args) {
		SpringApplication.run(MagazinOnlineApplication.class, args);
	}

	@Bean
	CommandLineRunner init(ProdusRepository pr, MarcaRepository marcaRepository, CategorieRepository categorieRepository)
	{
		return  args -> {

			Produs p1=new Produs(null,"Ambreiaj","Ambreiaj Volvo",200.0);
			pr.save(p1);

			Produs p2=new Produs(null,"Alternator","Alternator VW",300.0);
			pr.save(p2);

			Produs p=new Produs(null,"Disc Ambreiaj","Disc Ambreiaj VW",200.0);
			pr.save(p);
			Categorie c1=new Categorie();
			categorieRepository.save(c1);





		};
	}

}
