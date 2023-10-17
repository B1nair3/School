package com.example.demoApi2.controller;

import com.example.demoApi2.model.Professor;
import com.example.demoApi2.repository.ProfessorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @GetMapping("/buscar/{rf}")
    public Optional<Professor> buscarPorRf(@PathVariable("rf") int rf) {
        return prRepository.findById(rf);
    }
}
