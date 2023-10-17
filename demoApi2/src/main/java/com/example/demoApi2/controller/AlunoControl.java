package com.example.demoApi2.controller;

import com.example.demoApi2.model.Aluno;
import com.example.demoApi2.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping ("/buscar/ra/{ra}")
    public Optional<Aluno> buscarPorRa(@PathVariable("ra") int ra) {
        return alRepository.findById(ra);
    }

    @GetMapping ("/buscar/nome/{nome}")
    public List<Aluno> buscarPorNome (@PathVariable("nome") String nome) {
        return alRepository.findByNome(nome);
    }

    @GetMapping ("/buscar/altura/{altura}")
    public List<Aluno> buscarPorAltura (@PathVariable("altura") double altura) {
        return alRepository.findByAltura(altura);
    }

    @PostMapping("/inserir")
    public void inserirAluno(@RequestBody Aluno aluno) {
        alRepository.save(aluno);
    }
}