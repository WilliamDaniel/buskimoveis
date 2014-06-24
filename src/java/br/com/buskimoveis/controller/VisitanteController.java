
package br.com.buskimoveis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;


@Controller
@RequestMapping(value = "/visitante")
public class VisitanteController {

    @RequestMapping(value = "/novo", method = RequestMethod.GET)
    public ModelAndView cadastrar() {
        ModelAndView mv = new ModelAndView("visitante/novo");
        return mv;
    }

}
