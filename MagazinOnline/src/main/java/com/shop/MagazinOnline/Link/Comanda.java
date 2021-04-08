package com.shop.MagazinOnline.Link;

import com.shop.MagazinOnline.Actori.Client;
import com.shop.MagazinOnline.Piese.Produs;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor

public class Comanda {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    @OneToMany
    private List<Produs> produse;
    private Date dataComanda;
    @OneToOne
    private Client client;
    private Long cantitate;
    private Double pret;
    private String cod;

}
