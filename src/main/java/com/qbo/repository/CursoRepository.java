package com.qbo.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.qbo.model.Curso;

@Repository
public interface CursoRepository extends JpaRepository<Curso, String> {

	//Se aplica para registros de datos.
	@Transactional
	@Modifying
	@Query(value = "{call sp_MantRegistrarCurso(:nombrecurso, :creditocurso)}",
			nativeQuery = true)
	void registrarCurso(@Param("nombrecurso") String nomcurso, 
			@Param("creditocurso") Integer creditocurso);
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_MantActualizarCurso(:idcurso, :nombrecurso, :creditocurso)}", 
			nativeQuery =  true)
	void actualizarCurso(@Param("idcurso") String idcurso,
			@Param("nombrecurso")String nombrecurso,
			@Param("creditocurso")Integer creditocurso);
	
	@Transactional
	@Modifying
	@Query(value = "{call sp_MantEliminarCurso(:idcurso)}", nativeQuery = true)
	void eliminarCurso(@Param("idcurso")String idcurso);
	
	
	
}
