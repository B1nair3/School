package com.example.demoApi2.controller;

import com.example.demoApi2.model.Aluno;
import com.example.demoApi2.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/apiAluno")
public class AlunoControl {

    @Autowired
    AlunoRepository alRepository;

    @GetMapping ("/todos")
    public List<Aluno> buscarAlunos() {
        return alRepository.findAll();
    }
}
