/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.buskimoveis.model.dao;

import br.com.buskimoveis.model.entity.Usuario;
import br.com.buskimoveis.model.entity.Visitante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Elessandra
 */
@Repository
public class VisitanteDao {

    @Autowired //spring, me de um dataSource. Pedido de dependencia.
    private DataSource dataSource; //dataSource definido no <bean> no arquivo de configuracao// objeto que vai me deixar mexer com o banco

    public List<Visitante> lerTodos() {
        String query = "select * from usuario";
        List<Visitante> visitantes = new ArrayList<>();
        try {
            Connection connection = dataSource.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Visitante visitante = new Visitante();
                visitante.setId(resultSet.getLong("id"));
                visitante.setEmail(resultSet.getString("email"));
                visitante.setSenha(resultSet.getString("senha"));
                visitante.setNome(resultSet.getString("nome"));
                visitante.setTelefone(resultSet.getString("telefone"));
                visitantes.add(visitante);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VisitanteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return visitantes;
    }

    public Visitante lerVisitante(Long id) {
        Visitante visitante = new Visitante();
        String query = "select * from usuario where id = ?";
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setLong(1, id);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                visitante.setId(resultSet.getLong("id"));
                visitante.setNome(resultSet.getString("nome"));
                visitante.setEmail(resultSet.getString("email"));
                visitante.setSenha(resultSet.getString("senha"));
                visitante.setTelefone(resultSet.getString("telefone"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(VisitanteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return visitante;
    }

    public void excluir(Long id) {
        String query = "delete from usuario where id = ?";
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setLong(1, id);
            ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(VisitanteDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void salvar(Visitante visitante) throws SQLException {
        String query = "insert into usuario(nome, email, telefone, senha) values(?,?,?,?)";
        Connection connection = dataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, visitante.getNome());
        ps.setString(2, visitante.getEmail());
        ps.setString(3, visitante.getTelefone());
        ps.setString(4, visitante.getSenha());
        ps.execute();
    }

    //Salvar usuário administrativo
    public void salvar(Usuario usuario, Long idImobiliaria) throws SQLException {
        String query = "insert into usuario(nome, email, senha, imobiliaria_fk) values(?,?,?,?)";
        Connection connection = dataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, usuario.getNome());
        ps.setString(2, usuario.getEmail());
        ps.setString(3, usuario.getSenha());
        ps.setLong(4, idImobiliaria);
        ps.execute();
    }

    public void update(Visitante visitante) {
        String query = "update usuario set nome = ?, telefone= ?, senha=? where id = ?";        
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, visitante.getNome());
           // ps.setString(2, visitante.getEmail());
            ps.setString(2, visitante.getTelefone());
            ps.setString(3, visitante.getSenha());
            ps.setLong(4, visitante.getId());
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(VisitanteDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
