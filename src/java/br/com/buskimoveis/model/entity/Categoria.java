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
public enum Categoria {    
    RESIDENCIAL, COMERCIAL, TEMPORADA;

    @Override
    public String toString() {
        switch(this){
            case RESIDENCIAL:
                return "Residencial";
            case COMERCIAL:
                return "Comercial";
            case TEMPORADA:
                return "Temporada";
        }
        return null;
    }
    
    
}
