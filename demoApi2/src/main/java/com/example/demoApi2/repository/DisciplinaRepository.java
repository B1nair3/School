package com.example.demoApi2.repository;

import com.example.demoApi2.model.Disciplina;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DisciplinaRepository extends JpaRepository <Disciplina, Integer> {
    List<Disciplina> findByNome(String nome);
    List<Disciplina> findByHora(int hora);
    List<Disciplina> findBySigla(String sigla);
}
