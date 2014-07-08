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
public enum Comodo {     
    SALA, SALA_DE_JANTAR, COZINHA, COZINHA_AMERICANA, BANHEIRO, BANHEIRO_SOCIAL, QUARTO, SUITE, VAGAS_GARAGEM;
    
    private Integer quantidade;

    @Override
    public String toString() {
        switch(this){
            case SALA:
                return "Sala";
            case SALA_DE_JANTAR:
                return "Sala de Jantar";
            case COZINHA:
                return "Cozinha";
            case COZINHA_AMERICANA:
                return "Cozinha americana";
            case BANHEIRO:
                return "Banheiro";
            case BANHEIRO_SOCIAL:
                return "Banheiro social";
            case QUARTO:
                return "Quarto";
            case SUITE:
                return "Suíte"; 
            case VAGAS_GARAGEM:
                return "Vaga(s) na garagem";
        }
        return null;
    }    

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }
}
