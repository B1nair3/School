import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        //instancia das classes
        String nome = null, rg = null, descricao = null, plataforma = null;
        int cpf = 0, idade = 0, telefone = 0, id = 0, codigo = 0;
        float preco = 0;

        //instancias genericas (não tente entender)
        int i = 1, escolha = 0, scanI = 0, posicaoC = 0, posicaoF = 0, posicaoJ = 0, erro = 0;
        String scanS;
        Scanner scan = new Scanner(System.in);

        //listas
        ArrayList<Cliente> listaCliente = new ArrayList<>();
        ArrayList<Produto> listaProduto = new ArrayList<>();
        ArrayList<Funcionario> listaFuncionario = new ArrayList<>();

        //menu do site
        do {
            try {
                System.out.println("Bem-vindo a Blitz Games! Oque você busca?");
                System.out.println("[0] Sair\n[1] Gerenciar cadastros\n[2] Gerenciar jogos\n");
                escolha = scan.nextInt();
            }
            catch (InputMismatchException e) {
                System.out.println("Escolha uma das opções existentes!");
            }

            //se escolher 0 = sair
            if (escolha == 0) {
                break;
            }

            //se escolher 1 = opçoes de cadastro
            if (escolha == 1) {
                System.out.println("Oque voce busca fazer?");
                System.out.println("Cliente:\n[1] Adicionar cliente\n[2] Remover cliente\n[3] Buscar cliente\n[11] Mostrar tudo\n[33] Dados específicos\n");
                System.out.println("Funcionario:\n[4] Adicionar funcionario\n[5] Remover funcionario\n[6] Buscar funcionario\n[44] Mostrar tudo\n\n[0] Sair");
                try {
                    escolha = scan.nextInt();
                }
                catch (InputMismatchException e) {
                    System.out.println("Escolha uma das opções existentes!");
                    escolha = 0;
                }

                //se escolher 0 = sair
                if (escolha == 0) {
                    break;
                }

                switch (escolha) {
                    case 1:
                        erro = 0;
                        //atribuindo as variaveis
                        System.out.println("Digite os dados do cliente:");
                        try {
                            System.out.println("Nome (Caracter): ");
                            scan.nextLine();
                            nome = scan.nextLine();
                        } catch (IllegalArgumentException e) {
                            System.out.println("Nome não pode ser nulo!\n");
                            erro++;
                        }
                        try {
                            System.out.println("Idade (Numero): ");
                            idade = scan.nextInt();
                        } catch (InputMismatchException e) {
                            System.out.println("A idade minima para cadastros é de 1 ano!\n");
                            erro++;
                        }
                        try {
                            System.out.println("CPF (Numero): ");
                            cpf = scan.nextInt();
                        } catch (InputMismatchException e) {
                            erro++;
                            System.out.println("Não existe CPF negativo!\n");
                        }
                        try {
                            System.out.println("RG (Caracter): ");
                            scan.nextLine();
                            rg = scan.nextLine();
                        } catch (IllegalArgumentException e) {
                            erro++;
                            System.out.println("RG não pode ser nulo!\n");
                        }
                        try {
                            System.out.println("Telefone (Numero): ");
                            telefone = scan.nextInt();
                        } catch (InputMismatchException e) {
                            erro++;
                            System.out.println("Telefone não pode ser negativo!\n");
                            escolha = 0;
                        }

                        if (erro == 0) {
                            System.out.println("Posição: " + posicaoC + "\n");
                            posicaoC++;
                            Cliente cliente = new Cliente(nome, cpf, idade, rg, telefone);

                            //adicionando à lista
                            listaCliente.add(cliente);
                        }
                        break;

                    //removendo clientes
                    case 2:
                        try {
                            System.out.println("Digite a posição da pessoa que você busca remover: ");
                            scanI = scan.nextInt();
                            if (scanI < posicaoC) {
                                listaCliente.remove(scanI);
                                System.out.println("Pessoa removida com sucesso!\n");
                                posicaoC--;
                            } else {
                                System.out.println("Essa pessoa não existe!\n");
                            }
                        } catch (InputMismatchException e) {
                            System.out.println("Nome contem apenas caracteres!");
                        }
                        break;

                    //buscando clientes
                    case 3:
                        System.out.println("Digite o nome para buscar por pessoas!");
                        scan.nextLine();
                        scanS = scan.nextLine();

                        for (Cliente p : listaCliente) {
                            if (p.getNome().startsWith(scanS)) {
                                p.exibir();
                            }
                        }
                        break;

                    case 4:
                        erro = 0;
                        //atribuindo as variaveis
                        System.out.println("Digite os dados do funcionário:");
                        try {
                            System.out.println("Nome (Caracter): ");
                            scan.nextLine();
                            nome = scan.nextLine();
                        } catch (IllegalArgumentException e) {
                            System.out.println("Nome não pode ser nulo!\n");
                            erro++;
                        }
                        try {
                            System.out.println("Idade (Numero): ");
                            idade = scan.nextInt();
                        } catch (InputMismatchException e) {
                            System.out.println("A idade minima para cadastros é de 1 ano!\n");
                            erro++;
                        }
                        try {
                            System.out.println("CPF (Numero): ");
                            cpf = scan.nextInt();
                        } catch (InputMismatchException e) {
                            System.out.println("Não existe CPF negativo!\n");
                            erro++;
                        }
                        try {
                            System.out.println("RG (Caracter): ");
                            scan.nextLine();
                            rg = scan.nextLine();
                        } catch (IllegalArgumentException e) {
                            System.out.println("RG não pode ser nulo!\n");
                            erro++;
                        }
                        try {
                            System.out.println("ID (Numero): ");
                            id = scan.nextInt();
                        } catch (InputMismatchException e) {
                            System.out.println("ID não pode ser negativo!\n");
                            erro++;
                            escolha = 0;
                        }
                        if (erro == 0) {
                            System.out.println("Posição: " + posicaoF + "\n");
                            posicaoF++;

                            Funcionario funcionario = new Funcionario(nome, cpf, idade, rg, id);
                            //adicionando à lista
                            listaFuncionario.add(funcionario);
                        }
                        break;

                    case 5:
                        System.out.println("Digite a posição do funcionário que você busca remover: ");
                        try {
                            scanI = scan.nextInt();
                        } catch (InputMismatchException e) {
                            System.out.println("A posição necessariamente é um numero inteiro!");
                        }
                        if (scanI < posicaoF) {
                            listaFuncionario.remove(scanI);
                            System.out.println("Funcionáio removido com sucesso!\n");
                            posicaoF--;
                        } else {
                            System.out.println("Esse funcionário não existe!\n");
                        }
                        break;

                    case 6:
                        System.out.println("Digite o nome para buscar por funcionarios!\n");
                        scan.nextLine();
                        scanS = scan.nextLine();
                        for (Funcionario p : listaFuncionario) {
                            if (p.getNome().startsWith(scanS)) {
                                p.exibir();
                            }
                        }
                        break;

                    case 33:
                        System.out.println("O que você busca?");
                        System.out.println("[1] Cliente de maior idade\n[2] Cliente de menor idade\n[3] Clientes maiores de 60 anos\n[4] Clientes menores de 18 anos\n[5] Média de idades\n[0] Sair");
                        try {
                            scanI = scan.nextInt();
                        }
                        catch (InputMismatchException e) {
                            System.out.println("Escolha uma das opções existentes!");
                        }

                        //se escolher 0 = sair
                        if (escolha == 0) {
                            break;
                        }

                        switch (scanI) {
                            case 1:
                                int idoso = 0;
                                for (Cliente p: listaCliente) {
                                    if (p.getIdade() > idoso) {
                                        idoso = p.getIdade();
                                    }
                                }
                                for (Cliente p: listaCliente) {
                                    if (p.getIdade() == idoso) {
                                        p.exibir();
                                    }
                                }
                                break;

                            case 2:
                                int novo = listaCliente.get(1).getIdade();
                                for (Cliente p: listaCliente) {
                                    if (p.getIdade() < novo) {
                                        novo = p.getIdade();
                                    }
                                }
                                for (Cliente p: listaCliente) {
                                    if (p.getIdade() == novo) {
                                        p.exibir();
                                    }
                                }
                                break;

                            case 3:
                                int cliente60 = 0;
                                for (Cliente p: listaCliente) {
                                    if (p.getIdade() > 60) {
                                        cliente60++;
                                    }
                                }
                                System.out.println("Clientes maiores de 60 anos: " + cliente60 + "\n");
                                break;

                            case 4:
                                int cliente18 = 0;
                                for (Cliente p: listaCliente) {
                                    if (p.getIdade() < 18) {
                                        cliente18++;
                                    }
                                }
                                System.out.println("Clientes menores de 18 anos: " + cliente18 + "\n");
                                break;

                            case 5:
                                double mediaIdade = 0;
                                for (Cliente p: listaCliente) {
                                    mediaIdade += p.getIdade();
                                }
                                System.out.println("Média de idade dos clientes: " + mediaIdade/listaCliente.size() + "\n");
                            }
                            break;

                    case 11:
                        for (Cliente p: listaCliente) {
                            p.exibir();
                        }
                        break;

                    case 44:
                        for (Funcionario p: listaFuncionario) {
                            p.exibir();
                            System.out.println("\n");
                        }
                        break;

                }
            }

            //se escolher 2 = opçoes de jogos
            if (escolha == 2) {
                System.out.println("Oque voce busca fazer?");
                System.out.println("[1] Adicionar jogo\n[2] Remover jogo\n[3] Buscar jogos\n[11] Mostrar tudo\n[33] Dados específicos\n\n[0] Sair");
                try {
                    escolha = scan.nextInt();
                }
                catch (InputMismatchException e) {
                    System.out.println("Escolha uma opção existente!");
                }

                //se escolher 0 = sair
                if (escolha == 0) {
                    break;
                }

                switch (escolha) {
                    case 33:
                        System.out.println("O que você busca?");
                        System.out.println("[1] Jogo mais caro\n[2] Jogo mais barato\n[3] Média de preço dos jogos\n[0] Sair");
                        try {
                            scanI = scan.nextInt();
                        }
                        catch (InputMismatchException e) {
                            System.out.println("Escolha uma das opções existentes!");
                        }

                        //se escolher 0 = sair
                        if (escolha == 0) {
                            break;
                        }

                        switch (scanI) {
                            case 1:
                                float caro = 0;
                                for (Produto p: listaProduto) {
                                    if (p.getPreco() > caro) {
                                        caro = p.getPreco();
                                    }
                                }
                                for (Produto p: listaProduto) {
                                    if (p.getPreco() == caro) {
                                        p.exibir();
                                    }
                                }
                                break;

                            case 2:
                                float barato = listaProduto.get(0).getPreco();

                                for (Produto p: listaProduto) {
                                    if (p.getPreco() < barato) {
                                        barato = p.getPreco();
                                    }
                                }
                                for (Produto p: listaProduto) {
                                    if (p.getPreco() == barato) {
                                        p.exibir();
                                    }
                                }
                                break;

                            case 3:
                                double mediaPreco = 0;
                                for (Produto p: listaProduto) {
                                    mediaPreco += p.getPreco();
                                }
                                System.out.println("Média de preço dos jogos: " + mediaPreco/listaProduto.size() + "\n");
                            break;
                        }
                    break;

                    case 11:
                        for (Produto p: listaProduto) {
                            p.exibir();
                        }
                        break;

                    case 1:
                        //atribuindo as variaveis
                        System.out.println("Digite os dados do jogo:");
                            try {
                                System.out.println("Nome (Caracter): ");
                                scan.nextLine();
                                nome = scan.nextLine();
                            } catch (IllegalArgumentException e) {
                                System.out.println("Nome não pode ser nulo!\n");
                                erro++;
                            }
                            try {
                                System.out.println("Descrição (Caracter): ");
                                descricao = scan.nextLine();
                            } catch (IllegalArgumentException e) {
                                System.out.println("A descrição não pode ser nula!\n");
                                erro++;
                            }
                            try {
                                System.out.println("Plataforma (Caracter): ");
                                plataforma = scan.nextLine();
                            } catch (IllegalArgumentException e) {
                                System.out.println("Plataforma não pode ser nula!\n");
                                erro++;
                            }
                            try {
                                System.out.println("Codigo (Numero): ");
                                scan.nextLine();
                                codigo = scan.nextInt();
                            } catch (InputMismatchException e) {
                                System.out.println("O codigo não pode ser nulo!\n");
                                erro++;
                            }
                            try {
                                System.out.println("Preco (Numero): ");
                                preco = scan.nextFloat();
                            } catch (InputMismatchException e) {
                                System.out.println("O preço não pode ser negativo!\n");
                                erro++;
                            }
                        if (erro == 0) {
                            System.out.println("Posição: " + posicaoJ + "\n");
                            posicaoJ++;
                            Produto produto = new Produto(descricao, nome, plataforma, preco, codigo);

                            //adicionando à lista
                            listaProduto.add(produto);
                        }
                        break;

                    case 2:
                        System.out.println("Digite a posição do jogo que você busca remover: ");
                        try {
                            scanI = scan.nextInt();
                        }
                        catch (InputMismatchException e) {
                            System.out.println("A posição é necessariamente um numero inteiro!");
                        }
                        if (scanI < posicaoJ) {
                            listaProduto.remove(scanI);
                            System.out.println("Jogo removido com sucesso!\n");
                            posicaoJ--;
                        }
                        else {
                            System.out.println("Essa pessoa não existe!\n");
                        }
                        break;

                    case 3:
                        System.out.println("Digite como você quer buscar por jogos!");
                        System.out.println("[1] Nome\n[2] Descrição\n[3] Plataforma\n");
                        scanI = scan.nextInt();
                        switch (scanI) {
                            case 1:
                                System.out.println("Digite o nome do jogo que você busca: ");
                                scan.nextLine();
                                scanS = scan.nextLine();
                                for (Produto p: listaProduto) {
                                    if (p.getNome().startsWith(scanS)) {
                                        p.exibir();
                                    }
                                }
                                break;

                            case 2:
                                System.out.println("Digite uma ou mais palavras da descrição do produto que busca: ");
                                scan.nextLine();
                                scanS = scan.nextLine();
                                for (Produto p: listaProduto) {
                                    if (p.getDescricao().contains(scanS)) {
                                        p.exibir();
                                    }
                                }
                                break;

                            case 3:
                                System.out.println("Digite a plataforma do jogo que busca: ");
                                scan.nextLine();
                                scanS = scan.nextLine();
                                for (Produto p: listaProduto) {
                                    if (p.getPlataforma().startsWith(scanS)) {
                                        p.exibir();
                                    }
                                }
                                break;
                        }
                        break;
                }
            }
        } while (i != 0);
    }
}