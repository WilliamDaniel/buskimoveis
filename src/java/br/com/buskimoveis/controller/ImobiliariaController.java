/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.buskimoveis.controller;

import br.com.buskimoveis.model.dao.ImobiliariaDao;
import br.com.buskimoveis.model.entity.Imobiliaria;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

@Controller
@RequestMapping(value = "/imobiliaria")
public class ImobiliariaController {

    @Autowired
    ImobiliariaDao imobiliariaDao;

    @RequestMapping(value = "/novo", method = RequestMethod.GET)
    public ModelAndView cadastrar() {
        ModelAndView mv = new ModelAndView("imobiliaria/novo");
        return mv;
    }

    @RequestMapping(method = RequestMethod.POST)
    public @ResponseBody String cadastrar(Imobiliaria imobiliaria) {
        try {
            imobiliaria = imobiliariaDao.salvar(imobiliaria);
        } catch (SQLException ex) {
            return "false";
        }
        return String.valueOf(imobiliaria.getId());
    }
}
