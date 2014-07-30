package br.com.buskimoveis.controller;

import br.com.buskimoveis.model.dao.VisitanteDao;
import br.com.buskimoveis.model.entity.Visitante;
import br.com.buskimoveis.model.vo.UsuarioImobiliariaVo;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/visitante")
public class VisitanteController {

    @Autowired
    private VisitanteDao visitanteDao;

    @RequestMapping(method = RequestMethod.GET)
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

    //Cadastrar usuário da imobiliária
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView cadastrar(UsuarioImobiliariaVo usuarioImobiliariaVo) {
        if (usuarioImobiliariaVo.getIdImobiliaria() == null) {
            try {
                visitanteDao.salvar(usuarioImobiliariaVo.getUsuario());
            } catch (SQLException ex) {
                Logger.getLogger(VisitanteController.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else {
            try {
                visitanteDao.salvar(usuarioImobiliariaVo.getUsuario(), usuarioImobiliariaVo.getIdImobiliaria());
            } catch (SQLException ex) {
                Logger.getLogger(VisitanteController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        ModelAndView mv = new ModelAndView("redirect:/visitante");
        return mv;
    }

    @RequestMapping(value = "/{id}/alterar", method = RequestMethod.GET)
    public ModelAndView update(@PathVariable Long id) {
        Visitante visitante = visitanteDao.lerVisitante(id);
        ModelAndView mv = new ModelAndView("/visitante/novo");
        mv.addObject("visitante", visitante);
        return mv;
    }

    @RequestMapping(value = "/visitante/{id}/alterar", method = RequestMethod.POST)
    public ModelAndView update(Visitante visitante) {
        visitanteDao.update(visitante);
        ModelAndView mv = new ModelAndView("redirect:/visitante");
        return mv;
    }

    @RequestMapping(value = "/{id}/excluir", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Long id) {
        visitanteDao.excluir(id);
        ModelAndView mv = new ModelAndView("redirect:/visitante");
        return mv;
    }

}
