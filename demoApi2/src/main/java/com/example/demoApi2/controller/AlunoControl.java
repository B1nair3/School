package com.example.demoApi2.controller;

import com.example.demoApi2.model.Aluno;
import com.example.demoApi2.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

/**
 * @author B1nair3
 */

@RestController
@RequestMapping("/apiAluno")
public class AlunoControl {

    @Autowired
    AlunoRepository alRepository;

    @GetMapping ("/buscarTodos")
    public List<Aluno> buscarTodosAlunos() {
        return alRepository.findAll();
    }

    @GetMapping ("/buscar/{ra}")
    public Optional<Aluno> buscarPorRa(@PathVariable("ra") int ra) {
        return alRepository.findById(ra);
    }
}