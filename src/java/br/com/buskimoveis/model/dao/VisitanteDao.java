/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.buskimoveis.model.dao;

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
        String query = "select * from visitante";
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

    public void salvar(Visitante visitante) throws SQLException {
        String query = "insert into visitante(nome, email, telefone, senha) values(?,?,?,?)";
        Connection connection = dataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, visitante.getNome());
        ps.setString(2, visitante.getEmail());
        ps.setString(3, visitante.getTelefone());
        ps.setString(4, visitante.getSenha());                
        ps.execute();        
    }  
}
