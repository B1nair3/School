package testehibernate;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;
import util.HibernateUtil;

import javax.persistence.OneToMany;

public class TesteHibernate2 {
    public static void main(String[] args) {
        
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();

            //primeiro cria as disciplinas
            Disciplina disc1 = new Disciplina (1,"Java", 80);
            Disciplina disc2 = new Disciplina (2, "Python", 80);
            Disciplina disc3 = new Disciplina (3, "Scratch", 120);
        
            //cria os alunos
            Aluno al1 =new Aluno(1111,"Alexandre o Big");
            Aluno al2 =new Aluno(2222,"Enrique");
            Aluno al3 =new Aluno(3333,"Henrique Jerson");

            //cria os professores
            Professor prof1 = new Professor(1,"Tania",5000);
            Professor prof2 = new Professor(2,"Big Xandes",10000);

            //cria os departamentos
           Departamento dep1 = new Departamento(1,"Departamento de Humanas");
           Departamento dep2 = new Departamento(2,"Departamento de Exatas");
           Departamento dep3 = new Departamento(3,"Departamento de Técnico");

           //cria os funcionarios
           Funcionario func1 = new Funcionario(1,"Vayne",1111);
           Funcionario func2 = new Funcionario(2,"Toriel",2222);
           Funcionario func3 = new Funcionario(3,"Aatrox", 666);

           //cria lista disciplinas
            ArrayList<Disciplina> listaTania = new ArrayList<>();
            listaTania.add(disc1);
            listaTania.add(disc2);
            prof1.setListaDisciplinas(listaTania);

            ArrayList<Disciplina> listaXands = new ArrayList<>();
            listaXands.add(disc3);
            prof2.setListaDisciplinas(listaXands);

           //salva os alunos, disciplinas, professores e etc
           session.save(al1);
           session.save(al2);
           session.save(al3);

           session.save(disc1);
           session.save(disc2);
           session.save(disc3);

           session.save(prof1);
           session.save(prof2);

           session.save(dep1);
           session.save(dep2);
           session.save(dep3);

           session.save(func1);
           session.save(func2);
           session.save(func3);
           
           session.getTransaction().commit();

        String sql4 = "from Departamento";
        Query query4 = session.createQuery(sql4);
        List<Departamento> result4 = query4.list();
        for (Departamento d: result4) {
            System.out.println("Departamento: " + d.getNome());
        }
        System.out.println("");

        String sql5 = "from Funcionario";
        Query query5 = session.createQuery(sql5);
        List<Funcionario> result5 = query5.list();
        for (Funcionario f: result5) {
            System.out.println("Funcionario: " + f.getNome());
        }
        System.out.println("");

               String sql = "from Aluno where ra like '1%'";
               Query query = session.createQuery(sql);
               List<Aluno> result = query.list();
               for (Aluno a: result) {
                   System.out.println("Aluno: " + a.getNome());
               }
               System.out.println("");

        String sql2 = "from Professor";
        Query query2 = session.createQuery(sql2);
        List<Professor> result2 = query2.list();
        for (Professor p: result2) {
            System.out.println("Professor: " + p.getNome());
        }
        System.out.println("");

            String sql3 = "from Aluno where nome like 'A%'";
            Query query3 = session.createQuery(sql3);
            List<Aluno> result3 = query3.list();
            for (Aluno a: result3) {
                System.out.println("Aluno: " + a.getNome());
            }
            System.out.println("");

        String sql6 = "from Disciplina where codigo = 2";
        Query query6 = session.createQuery(sql6);
        List<Disciplina> result6 = query6.list();
        for (Disciplina d: result6) {
            System.out.println("Disciplina: " + d.getDescricao());
        }
        System.out.println("");

        String sql7 = "from Disciplina where cargaHoraria <= 80";
        Query query7 = session.createQuery(sql7);
        List<Disciplina> result7 = query7.list();
        for (Disciplina d: result7) {
            System.out.println("Disciplina: " + d.getDescricao());
        }
        System.out.println("");

        session.close();
           HibernateUtil.shutdown();
    }
}
