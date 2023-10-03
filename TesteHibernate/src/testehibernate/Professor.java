package testehibernate;

import javax.persistence.*;
import java.util.List;

@Entity
@Table
public class Professor {

    @Id
    private int codigo;

    @Column (nullable = false, length = 100, unique = true)
    private String nome;

    @Column
    private double salario;

    @OneToMany
    @JoinColumn(name = "profResponsavel")
    private List<Disciplina> listaDisciplinas;

    public Professor(int codigo, String nome, double salario) {
        this.codigo = codigo;
        this.nome = nome;
        this.salario = salario;
    }

    public List<Disciplina> getListaDisciplinas() {
        return listaDisciplinas;
    }

    public void setListaDisciplinas(List<Disciplina> listaDisciplinas) {
        this.listaDisciplinas = listaDisciplinas;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
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
