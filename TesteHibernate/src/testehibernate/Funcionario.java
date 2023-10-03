package testehibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table

public class Funcionario {

    @Id
    private int id;

    @Column
    private String nome;

    @Column
    private double salario;

    public Funcionario(int codFunc, String nome, double salario) {
        this.id = codFunc;
        this.nome = nome;
        this.salario = salario;
    }

    public int getCodFunc() {
        return id;
    }

    public void setCodFunc(int cod) {
        this.id = cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }
}
