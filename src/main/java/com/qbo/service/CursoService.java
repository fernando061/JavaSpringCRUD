package com.qbo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qbo.repository.CursoRepository;
import com.qbo.model.*;

@Service
public class CursoService {
	@Autowired
	private CursoRepository repository;	
	public List<Curso> listarCursos(){
		return repository.findAll();
	}
	public void registrarCurso(Curso curso) {
		if(curso.getIdcurso() == null) {
			repository.registrarCurso(curso.getNomcurso(), curso.getCredito());	
		}else {
			repository.actualizarCurso(curso.getIdcurso(),
					curso.getNomcurso(), 
					curso.getCredito());
		}
	}
	public void eliminarCurso(Curso curso) {
		repository.eliminarCurso(curso.getIdcurso());
	}	
}
