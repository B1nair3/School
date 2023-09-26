/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import java.util.ArrayList;
import model.DAO.ClienteDAO;
import model.Cliente;

/**
 *
 * @author aluno
 */
public class ClienteControl {
    ClienteDAO clDAO = new ClienteDAO();

    public void cadastrar(String nome, int codigo) throws SQLException, ClassNotFoundException {
        Cliente cliente = new Cliente(codigo, nome);
        clDAO.cadastrarCliente(cliente);
    }
    
    public void excluir(int codigo) throws SQLException, ClassNotFoundException {
        clDAO.excluirCliente(codigo);
    }
    
    public ArrayList<Cliente> buscar() throws SQLException, ClassNotFoundException {
        return (clDAO.buscarCliente());
    }
}
