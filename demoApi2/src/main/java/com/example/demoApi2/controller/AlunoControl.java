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

    @DeleteMapping("/deletar")
    public void removerAluno(@RequestBody Aluno aluno) {
        alRepository.delete(aluno);
    }

    @DeleteMapping("/deletar/ra/{ra}")
    public void removerAlunoPorRa(@PathVariable("ra") int ra) {
        alRepository.deleteById(ra);
    }

    @PutMapping("/atualizar")
    public void atualizarAluno(@RequestBody Aluno aluno) {
        alRepository.save(aluno);
    }

    @GetMapping("/todos/nome/piece/{piece}")
    public List<Aluno> buscarAlunoPorOnePiece(@PathVariable("piece") String piece) {
        return alRepository.findByOnePiece(piece);
    }

    @GetMapping("/todos/maior/ra/{ra}")
    public List<Aluno> buscarMaiorRa(@PathVariable("ra") int ra) {
        return alRepository.findByMaiorRa(ra);
    }

    @GetMapping("/todos/menor/altura/{altura}")
    public List<Aluno> buscarMenorAltura(@PathVariable("altura") double altura) {
        return alRepository.findByMenorAltura(altura);
    }

    @GetMapping("/todos/nomeRa/{nome}/{ra}")
    public List<Aluno> buscarNomeRa(@PathVariable("ra") int ra, @PathVariable("nome") String nome) {
        return alRepository.findByNomeRa(nome, ra);
    }
    @GetMapping("/todos/nomeAltura/{nome}/{altura}")
    public List<Aluno> buscarNomeAltura(@PathVariable("altura") double altura, @PathVariable("nome") String nome) {
        return alRepository.findByNomeAltura(nome, altura);
    }
}