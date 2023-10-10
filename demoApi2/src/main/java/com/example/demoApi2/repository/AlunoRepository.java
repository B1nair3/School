package com.example.demoApi2.repository;

import com.example.demoApi2.model.Aluno;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlunoRepository extends JpaRepository <Aluno, Integer> {
}
