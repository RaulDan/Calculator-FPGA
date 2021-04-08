package com.shop.MagazinOnline.service.implem;

import com.shop.MagazinOnline.Actori.Client;
import com.shop.MagazinOnline.Repositories.ClientRepository;
import org.springframework.stereotype.Service;

@Service
public class ClientImpl implements com.shop.MagazinOnline.service.ClientService {

    private final ClientRepository clientRep;

    public ClientImpl(ClientRepository c){
        this.clientRep=c;
    }

}
