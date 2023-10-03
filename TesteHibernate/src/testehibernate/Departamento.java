package testehibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Departamento {

    @Id
    private int cod;

    @Column
    private String nome;

    public Departamento(int codDepto, String nomeDepto) {
        this.cod = codDepto;
        this.nome = nomeDepto;
    }

    public int getCodDepto() {
        return cod;
    }

    public void setCodDepto(int codDepto) {
        this.cod = codDepto;
    }

    public String getNomeDepto() {
        return nome;
    }

    public void setNomeDepto(String nomeDepto) {
        this.nome = nomeDepto;
    }
}
