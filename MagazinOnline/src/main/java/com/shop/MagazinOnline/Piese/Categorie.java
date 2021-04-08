package com.shop.MagazinOnline.Piese;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Categorie extends  Produs{

    private String categorie;


}
