/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.buskimoveis.model.entity;

/**
 *
 * @author Elessandra
 */
public enum StatusImovel {
    DISPONIVEL, INDISPONIVEL;

    @Override
    public String toString() {
        switch(this){
            case DISPONIVEL:
                return "Disponível";
            case INDISPONIVEL:
                return "Indisponível";
        }
        return null;
    }    
}
