package ar.com.factorit.fescobar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.com.factorit.fescobar.model.Rol;
import ar.com.factorit.fescobar.repository.RolRepository;

@Service
public class RolService {

	@Autowired
	private RolRepository rolRepository;

	@Transactional
	public List<Rol> getRoles() {
		return rolRepository.findAll();
	}

	@Transactional
	public Rol getById(int id) {
		return rolRepository.findOne(id);
	}

	@Transactional
	public boolean save(Rol rol) {
		return rolRepository.save(rol) != null;
	}

	@Transactional
	public boolean update(Rol rol) {
		return rolRepository.save(rol) != null;
	}

	@Transactional
	public void delete(int id) {
		rolRepository.delete(id);
	}
}
