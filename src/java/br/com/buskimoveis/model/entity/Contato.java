/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.buskimoveis.model.entity;

import java.util.Date;

/**
 *
 * @author Elessandra
 */
public class Contato {
    private Long id;
    private Date dataHora;
    private String assunto;    
    private Imovel imovel;
    private VisitanteImovel visitanteImovel;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDataHora() {
        return dataHora;
    }

    public void setDataHora(Date dataHora) {
        this.dataHora = dataHora;
    }

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }
    
    public Imovel getImovel() {
        return imovel;
    }

    public void setImovel(Imovel imovel) {
        this.imovel = imovel;
    }

    public VisitanteImovel getVisitanteImovel() {
        return visitanteImovel;
    }

    public void setVisitanteImovel(VisitanteImovel visitanteImovel) {
        this.visitanteImovel = visitanteImovel;
    }
    
    
    
}