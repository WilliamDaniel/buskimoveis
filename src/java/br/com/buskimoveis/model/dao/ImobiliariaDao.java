/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.buskimoveis.model.dao;

import br.com.buskimoveis.model.entity.Imobiliaria;
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
public class ImobiliariaDao {

    @Autowired
    private DataSource dataSource;

    public Imobiliaria lerImobiliaria(Long id) {
        Imobiliaria imobiliaria = new Imobiliaria();
        String query = "select * from imobiliaria where id = ?";
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setLong(1, id);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                imobiliaria.setId(resultSet.getLong("id"));
                imobiliaria.setRazaoSocial(resultSet.getString("razaosocial"));
                imobiliaria.setNomeFantasia(resultSet.getString("nomefantasia"));
                imobiliaria.setCnpj(resultSet.getString("cnpj"));
                imobiliaria.setCreci(resultSet.getString("creci"));
                imobiliaria.setRua(resultSet.getString("rua"));
                imobiliaria.setNumero(resultSet.getInt("numero"));
                imobiliaria.setBairro(resultSet.getString("bairro"));
                imobiliaria.setCidade(resultSet.getString("cidade"));
                imobiliaria.setCep(resultSet.getString("cep"));
                imobiliaria.setComplemento(resultSet.getString("complemento"));
                imobiliaria.setTelefone(resultSet.getString("telefone"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(VisitanteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return imobiliaria;
    }

    public Imobiliaria salvar(Imobiliaria imobiliaria) throws SQLException {
        String query = "insert into imobiliaria(razaosocial, nomefantasia, cnpj, creci, rua, numero, bairro, cidade, cep, complemento, telefone) values(?,?,?,?,?,?,?,?,?,?,?)";
        Connection connection = dataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);//retornar o id da imobiliaria
        ResultSet resultSet;
        ps.setString(1, imobiliaria.getRazaoSocial());
        ps.setString(2, imobiliaria.getNomeFantasia());
        ps.setString(3, imobiliaria.getCnpj());
        ps.setString(4, imobiliaria.getCreci());
        ps.setString(5, imobiliaria.getRua());
        ps.setInt(6, imobiliaria.getNumero());
        ps.setString(7, imobiliaria.getBairro());
        ps.setString(8, imobiliaria.getCidade());
        ps.setString(9, imobiliaria.getCep());
        ps.setString(10, imobiliaria.getComplemento());
        ps.setString(11, imobiliaria.getTelefone());
        ps.execute();
        resultSet = ps.getGeneratedKeys();
        resultSet.next();
        imobiliaria.setId(resultSet.getLong(1));

        return imobiliaria;
    }

    public void excluir(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Imobiliaria> lerTodos() {
        String query = "select * from imobiliaria";
        List<Imobiliaria> imobiliarias = new ArrayList<>();
        try {
            Connection connection = dataSource.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Imobiliaria imobiliaria = new Imobiliaria();
                imobiliaria.setId(resultSet.getLong("id"));
                imobiliaria.setRazaoSocial(resultSet.getString("razaosocial"));
                imobiliaria.setNomeFantasia(resultSet.getString("nomefantasia"));
                imobiliaria.setCnpj(resultSet.getString("cnpj"));
                imobiliaria.setCreci(resultSet.getString("creci"));
                imobiliaria.setRua(resultSet.getString("rua"));
                imobiliaria.setNumero(resultSet.getInt("numero"));
                imobiliaria.setBairro(resultSet.getString("bairro"));
                imobiliaria.setCidade(resultSet.getString("cidade"));
                imobiliaria.setCep(resultSet.getString("cep"));
                imobiliaria.setComplemento(resultSet.getString("complemento"));
                imobiliaria.setTelefone(resultSet.getString("telefone"));
                imobiliarias.add(imobiliaria);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VisitanteDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return imobiliarias;
    }

}
