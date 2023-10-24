package com.example.demoApi2.controller;

import com.example.demoApi2.model.Aluno;
import com.example.demoApi2.model.Disciplina;
import com.example.demoApi2.model.Professor;
import com.example.demoApi2.repository.ProfessorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/apiProfessor")
public class ProfessorControl {

    @Autowired
    ProfessorRepository prRepository;

    @GetMapping("/buscarTodos")
    public List<Professor> buscarTodosProfessores() {
        return prRepository.findAll();
    }

    @GetMapping("/buscar/rf/{rf}")
    public Optional<Professor> buscarPorRf (@PathVariable("rf") int rf) {
        return prRepository.findById(rf);
    }

    @GetMapping ("/buscar/nome/{nome}")
    public List<Professor> buscarPorNome (@PathVariable("nome") String nome) {
        return prRepository.findByNome(nome);
    }

    @GetMapping ("/buscar/salario/{salario}")
    public List<Professor> buscarPorSalario (@PathVariable("salario") double salario) {
        return prRepository.findBySalario(salario);
    }

    @PostMapping("/inserir")
    public void inserirProfessor(@RequestBody Professor professor) {
        prRepository.save(professor);
    }

    @DeleteMapping("/deletar")
    public void removerProfessor(@RequestBody Professor professor) {
        prRepository.delete(professor);
    }

    @DeleteMapping("/deletar/rf/{rf}")
    public void removerProfessorPorRf(@PathVariable("rf") int rf) {
        prRepository.deleteById(rf);
    }

    @PutMapping("/atualizar")
    public void atualizarProfessor(@RequestBody Professor professor) {
        prRepository.save(professor);
    }

    @GetMapping("/todos/nome/piece/{piece}")
    public List<Professor> buscarProfessorPorOnePiece(@PathVariable("piece") String piece) {
        return prRepository.findByOnePiece(piece);
    }
    @GetMapping("/todos/nomeSalario/{nome}/{salario}")
    public List<Professor> buscarNomeSalario(@PathVariable("nome") String nome, @PathVariable("salario") double salario) {
        return prRepository.findByNomeSalario(nome, salario);
    }
    @GetMapping("/todos/nomeRf/{nome}/{rf}")
    public List<Professor> buscarNomeCodigo(@PathVariable("nome") String nome, @PathVariable("rf") int rf) {
        return prRepository.findByNomeRf(nome, rf);
    }
}