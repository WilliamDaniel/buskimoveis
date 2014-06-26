/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.buskimoveis.controller.api;

import br.com.buskimoveis.model.dao.VisitanteDao;
import br.com.buskimoveis.model.entity.Visitante;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Elessandra
 */
@Controller
@RequestMapping(value = "/api/visitante")
public class VisitanteApiController {

    @Autowired
    private VisitanteDao visitanteDao;

    @RequestMapping(method = RequestMethod.GET)
    public @ResponseBody
    List<Visitante> listar() {

        return visitanteDao.lerTodos();
    }

    @RequestMapping(method = RequestMethod.POST)
    public @ResponseBody String salvar(@RequestBody Visitante visitante) {
        try {
            visitanteDao.salvar(visitante);
        } catch (SQLException ex) {
            return "{\"success\":false}";
        }
        return "{\"success\":true}";
    }

}
