import java.util.InputMismatchException;

public class Funcionario extends Pessoa {
    private String nome, rg;
    private int idade, cpf, id;

    public Funcionario(String nome, int cpf, int idade, String rg, int id) {
        this.nome = nome;
        this.cpf = cpf;
        this.idade = idade;
        this.rg = rg;
        this.id = id;
    }

    public Funcionario() {
    }

    @Override
    public void exibir() {
        System.out.println("Nome: " + nome + "\nIdade: " + idade + "\nRG: " + rg + "\nCPF: " + cpf + "\nID: " + id);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome == null) {
            throw new IllegalArgumentException();
        }
        else {
            this.nome = nome;
        }
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        if (rg == null) {
            throw new IllegalArgumentException();
        }
        else {
            this.rg = rg;
        }
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        if (idade <= 0) {
            throw new InputMismatchException();
        }
        else {
            this.idade = idade;
        }
    }

    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        if (cpf <= 0) {
            throw new InputMismatchException();
        }
        else {
            this.cpf = cpf;
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int telefone) {
        if (telefone <= 0) {
            throw new InputMismatchException();
        }
        else {
            this.id = id;
        }
    }
}
