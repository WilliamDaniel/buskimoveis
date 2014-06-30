package br.com.buskimoveis.controller;

import br.com.buskimoveis.model.dao.VisitanteDao;
import br.com.buskimoveis.model.entity.Visitante;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

@Controller
@RequestMapping(value = "/visitante")
public class VisitanteController {

    @Autowired
    private VisitanteDao visitanteDao;

    //@RequestMapping(method = RequestMethod.GET)
    public ModelAndView listar() {
        ModelAndView mv = new ModelAndView("visitante/listagem");
        mv.addObject("visitantes", visitanteDao.lerTodos());
        return mv;
    }

    @RequestMapping(value = "/novo", method = RequestMethod.GET)
    public ModelAndView cadastrar() {
        ModelAndView mv = new ModelAndView("visitante/novo");
        return mv;
    }
 
    @RequestMapping(method = RequestMethod.POST)
    public String cadastrar(Visitante visitante) {
        try {
            visitanteDao.salvar(visitante);
        } catch (SQLException ex) {
            Logger.getLogger(VisitanteController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "redirect:/visitante";        
    }

    @RequestMapping(method = RequestMethod.GET)
    public String listar(ModelMap model) {
        model.addAttribute("visitantes", visitanteDao.lerTodos());
        return "visitante/listagem";
    }

}
