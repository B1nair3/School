package com.example.demoApi2.repository;

import com.example.demoApi2.model.Aluno;
import com.example.demoApi2.model.Professor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProfessorRepository extends JpaRepository <Professor, Integer> {
    List<Professor> findByNome(String nome);
    List<Professor> findBySalario(double salario);

    @Query("select p from Professor p where p.nome like %?1%")
    List<Professor> findByOnePiece(String piece);
    @Query("select p from Professor p where p.nome like %?1% and p.rf < ?2")
    List<Professor>findByNomeRf(String nome, int rf);
    @Query("select p from Professor p where p.nome like %?1% and p.salario > ?2")
    List<Professor>findByNomeSalario(String nome, double salario);
}
