package com.shop.MagazinOnline.Piese;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Marca extends Produs{

    private String marca;
    private String capacitateCilindrica;
}
