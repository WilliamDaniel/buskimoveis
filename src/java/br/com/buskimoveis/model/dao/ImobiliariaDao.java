/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.buskimoveis.model.dao;

import br.com.buskimoveis.model.entity.Imobiliaria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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

    public void salvar(Imobiliaria imobiliaria) throws SQLException {
        String query = "insert into imobiliaria(razaosocial, nomefantasia, cnpj, creci, rua, numero, bairro, cidade, cep, complemento, telefone) values(?,?,?,?,?,?,?,?,?,?,?)";
        Connection connection = dataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement(query);
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
    }

}
