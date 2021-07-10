package com.qbo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "curso")
public class Curso {
	
	@Id
	private String idcurso;
	
	@Column(name = "nomcurso")
	private String nomcurso;
	
	@Column(name = "credito")
	private Integer credito;
	
	public String getIdcurso() {
		return idcurso;
	}
	public void setIdcurso(String idcurso) {
		this.idcurso = idcurso;
	}
	public String getNomcurso() {
		return nomcurso;
	}
	public void setNomcurso(String nomcurso) {
		this.nomcurso = nomcurso;
	}
	public Integer getCredito() {
		return credito;
	}
	public void setCredito(Integer credito) {
		this.credito = credito;
	}
	public Curso() {

	}
	public Curso(String nomcurso, Integer credito) {
		super();
		this.nomcurso = nomcurso;
		this.credito = credito;
	}
	
	
	

}
