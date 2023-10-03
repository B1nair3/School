package testehibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Departamento")
public class Departamento {

    @Id
    @Column(name = "ID")
    private int cod;

    @Column(length = 50)
    private String nome;

    public Departamento(int codDepto, String nomeDepto) {
        this.cod = codDepto;
        this.nome = nomeDepto;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int codDepto) {
        this.cod = codDepto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nomeDepto) {
        this.nome = nomeDepto;
    }
}
