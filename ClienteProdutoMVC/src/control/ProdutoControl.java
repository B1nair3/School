/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import java.util.ArrayList;
import model.DAO.ProdutoDAO;
import model.Produto;

/**
 *
 * @author aluno
 */
public class ProdutoControl {
    ProdutoDAO pdDAO = new ProdutoDAO();

    public void cadastrar(String nome, int codigo) throws SQLException, ClassNotFoundException {
        Produto produto = new Produto(codigo, nome);
        pdDAO.cadastrarProduto(produto);
    }
    
    public void excluir(int codigo) throws SQLException, ClassNotFoundException {
        pdDAO.excluirProduto(codigo);
    }
    
    public ArrayList<Produto> buscar() throws SQLException, ClassNotFoundException {
        return (pdDAO.buscarProduto());
    }
}
