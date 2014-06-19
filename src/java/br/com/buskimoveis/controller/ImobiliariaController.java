/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.buskimoveis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * Criei esse controller pra testar os links de uma página pra outra.
 */
@Controller
public class ImobiliariaController {
    
    @RequestMapping(value = "/Cadastro", method = RequestMethod.GET)
    public ModelAndView Cadastrar(){
        ModelAndView mv = new ModelAndView("imobiliaria/Cadastro");
        return mv;
    }
    
}
