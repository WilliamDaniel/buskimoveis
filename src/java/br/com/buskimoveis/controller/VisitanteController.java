package br.com.buskimoveis.controller;

import br.com.buskimoveis.model.dao.VisitanteDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

@Controller
@RequestMapping(value = "/visitantes")
public class VisitanteController {

    @Autowired
    private VisitanteDao visitanteDao;

    @RequestMapping(value = "/novo", method = RequestMethod.GET)
    public ModelAndView cadastrar() {
        ModelAndView mv = new ModelAndView("visitante/novo");
        return mv;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView listar() {
        ModelAndView mv = new ModelAndView("visitante/listagem");
        mv.addObject("visitantes", visitanteDao.lerTodos());
        return mv;
    }
    
    //@RequestMapping(method = RequestMethod.GET)
    public String listar(ModelMap model) {
        model.addAttribute("visitantes", visitanteDao.lerTodos());
        return "visitante/listagem";
    }

}
