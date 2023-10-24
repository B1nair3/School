package com.example.demoApi2.repository;

import com.example.demoApi2.model.Aluno;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AlunoRepository extends JpaRepository <Aluno, Integer> {
    List<Aluno> findByNome(String nome);
    List<Aluno> findByAltura(double altura);

    @Query("select a from Aluno a where a.nome like %?1%")
    List<Aluno> findByOnePiece(String piece);
    @Query("select a from Aluno a where a.ra >= ?1")
    List<Aluno>findByMaiorRa(int ra);
    @Query("select a from Aluno a where a.altura <= ?1")
    List<Aluno>findByMenorAltura(double altura);
    @Query("select a from Aluno a where a.nome like %?1% and a.ra > ?2")
    List<Aluno>findByNomeRa(String nome, int ra);
    @Query("select a from Aluno a where a.nome like %?1% and a.altura < ?2")
    List<Aluno>findByNomeAltura(String nome, double altura);
}
