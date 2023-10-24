package com.example.demoApi2.repository;

import com.example.demoApi2.model.Aluno;
import com.example.demoApi2.model.Disciplina;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DisciplinaRepository extends JpaRepository <Disciplina, Integer> {
    List<Disciplina> findByNome(String nome);

    List<Disciplina> findByHora(int hora);

    List<Disciplina> findBySigla(String sigla);

    @Query("select d from Disciplina d where d.nome like %?1%")
    List<Disciplina> findByOnePiece(String piece);

    @Query("select d from Disciplina d where d.sigla like %?1% and d.codigo > ?2")
    List<Disciplina> findBySiglaCodigo(String sigla, int codigo);

    @Query("select d from Disciplina d where d.nome like %?1% and d.codigo < ?2")
    List<Disciplina> findByNomeCodigo(String nome, double codigo);

    @Query("select d from Disciplina d where d.nome like %?1% and d.sigla like %?2%")
    List<Disciplina> findByNomeSigla(String nome, String sigla);
}