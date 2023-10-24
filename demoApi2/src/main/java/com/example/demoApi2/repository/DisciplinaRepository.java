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
}
