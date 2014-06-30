/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.buskimoveis.model.vo;

import br.com.buskimoveis.model.entity.Usuario;
import br.com.buskimoveis.model.entity.Visitante;

/**
 *
 * @author Elessandra
 */
public class UsuarioImobiliariaVo {
    private Visitante usuario;
    private Long idImobiliaria;

    public Visitante getUsuario() {
        return usuario;
    }

    public void setUsuario(Visitante usuario) {
        this.usuario = usuario;
    }

    public Long getIdImobiliaria() {
        return idImobiliaria;
    }

    public void setIdImobiliaria(Long idImobiliaria) {
        this.idImobiliaria = idImobiliaria;
    }
    
    
    
}
