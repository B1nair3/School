package testehibernate;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import util.HibernateUtil;

public class TesteHibernate2 {
    public static void main(String[] args) {
        
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
     
            //primeiro cria as disciplinas
            Disciplina disc1 = new Disciplina (1,"Java", 80);
            Disciplina disc2 = new Disciplina (2, "Python", 80);
            Disciplina disc3 = new Disciplina (3, "Scratch", 120);
        
            //cria os alunos
            Aluno al1 =new Aluno(1111,"João Karr");
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

           session.close();
           HibernateUtil.shutdown();
    }
}
