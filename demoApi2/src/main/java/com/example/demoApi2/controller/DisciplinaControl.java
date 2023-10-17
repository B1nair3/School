package com.example.demoApi2.controller;

import com.example.demoApi2.model.Disciplina;
import com.example.demoApi2.repository.DisciplinaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/apiDisciplina")
public class DisciplinaControl {

    @Autowired
    DisciplinaRepository diRepository;

    @GetMapping("/buscarTodos")
    public List<Disciplina> buscarTodasDisciplinas() {
        return diRepository.findAll();
    }

    @GetMapping("/buscar/codigo/{codigo}")
    public Optional<Disciplina> buscarPorCodigo(@PathVariable("codigo") int codigo) {
        return diRepository.findById(codigo);
    }

    @GetMapping("/buscar/nome/{nome}")
    public List<Disciplina> buscarPorNome(@PathVariable("nome") String nome) {
        return diRepository.findByNome(nome);
    }

    @GetMapping("/buscar/hora/{hora}")
    public List<Disciplina> buscarPorHora(@PathVariable("hora") int hora) {
        return diRepository.findByHora(hora);
    }

    @GetMapping("/buscar/sigla/{sigla}")
    public List<Disciplina> buscarPorSigla(@PathVariable("sigla") String sigla) {
        return diRepository.findBySigla(sigla);
    }

    @PostMapping("/inserir")
    public void inserir(@RequestBody Disciplina disciplina) {
        diRepository.save(disciplina);
    }
}
