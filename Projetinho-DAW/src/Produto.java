import java.util.InputMismatchException;

public class Produto {
        private String descricao, nome, plataforma;
        private float preco;
        private int codigo;

        public Produto(String descricao, String nome, String plataforma, float preco, int codigo) {
                this.descricao = descricao;
                this.nome = nome;
                this.plataforma = plataforma;
                this.preco = preco;
                this.codigo = codigo;
        }

        public Produto() {
        }

        public void exibir() {
                System.out.println("Nome: " + nome + "\nDescricao: " + getDescricao() + "\nPlataforma: " + getPlataforma() + "\nPreco: " + preco + "\nCodigo: " + codigo);
        }


        public String getDescricao() {
                return descricao;
        }

        public void setDescricao(String descricao) {
                if (descricao == null) {
                        throw new IllegalArgumentException();
                }
                else {
                        this.descricao = descricao;
                }
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

        public String getPlataforma() {
                return plataforma;
        }

        public void setPlataforma(String plataforma) {
                if (plataforma == null) {
                        throw new IllegalArgumentException();
                }
                else {
                        this.plataforma = plataforma;
                }
        }

        public float getPreco() {
                return preco;
        }

        public void setPreco(float preco) {
                if (preco <= 0) {
                        throw new InputMismatchException();
                }
                else {
                        this.preco = preco;
                }
        }

        public int getCodigo() {
                return codigo;
        }

        public void setCodigo(int codigo) {
                if (codigo <= 0) {
                        throw new InputMismatchException();
                }
                else {
                        this.codigo = codigo;
                }
        }
}
