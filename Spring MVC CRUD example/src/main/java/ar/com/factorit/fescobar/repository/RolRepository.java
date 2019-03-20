package ar.com.factorit.fescobar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ar.com.factorit.fescobar.model.Rol;

@Repository
public interface RolRepository extends JpaRepository<Rol, Integer>{

}
