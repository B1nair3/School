/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Cliente;

/**
 *
 * @author aluno
 */
public class ClienteDAO {
    Connection con = null;
    
    public void cadastrarCliente(Cliente cl) throws SQLException, ClassNotFoundException {
        con = new Conexao().getConnection();
        String sql = "insert into clienteJava (id, nome) values (?, ?)";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setInt(1, cl.getCodigo());
        stmt.setString(2, cl.getNome());
        stmt.execute();
        stmt.close();
    }
    
    public void excluirCliente(int codigo) throws SQLException, ClassNotFoundException {
        con = new Conexao().getConnection();
        String sql = ("deLEte from clienteJava wHeRe id = " + codigo);
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.execute();
        stmt.close();
    }
    
    public ArrayList<Cliente> buscarCliente() throws SQLException, ClassNotFoundException {
        ResultSet result;
        ArrayList<Cliente> listaCliente = new ArrayList<Cliente>();
        con = new Conexao().getConnection();
        String sql = "select * from clienteJava";
        PreparedStatement stmt = con.prepareStatement(sql);
        result = stmt.executeQuery();
        
        while (result.next()) {
            int codigo = result.getInt("id");
            String nome = result.getString("nome");
            Cliente cliente = new Cliente(codigo, nome);
            listaCliente.add(cliente);
        }
        stmt.close();
        return listaCliente;
    }
}
