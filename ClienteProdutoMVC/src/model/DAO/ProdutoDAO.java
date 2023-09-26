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
import model.Produto;

/**
 *
 * @author aluno
 */
public class ProdutoDAO {
    Connection con = null;
    
    public void cadastrarProduto(Produto pd) throws SQLException, ClassNotFoundException {
        con = new Conexao().getConnection();
        String sql = "insert into produtoJava (id, nome) values (?, ?)";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setInt(1, pd.getCodigo());
        stmt.setString(2, pd.getNome());
        stmt.execute();
        stmt.close();
    }
    
    public void excluirProduto(int codigo) throws SQLException, ClassNotFoundException {
        con = new Conexao().getConnection();
        String sql = ("delete from produtoJava where id = " + codigo);
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.execute();
        stmt.close();
    }
    
    public ArrayList<Produto> buscarProduto() throws SQLException, ClassNotFoundException {
        ResultSet result;
        ArrayList<Produto> listaProduto = new ArrayList<Produto>();
        con = new Conexao().getConnection();
        String sql = "select * from produtoJava";
        PreparedStatement stmt = con.prepareStatement(sql);
        result = stmt.executeQuery();
        
        while (result.next()) {
            int codigo = result.getInt("id");
            String nome = result.getString("nome");
            Produto cliente = new Produto(codigo, nome);
            listaProduto.add(cliente);
        }
        stmt.close();
        return listaProduto;
    }
}