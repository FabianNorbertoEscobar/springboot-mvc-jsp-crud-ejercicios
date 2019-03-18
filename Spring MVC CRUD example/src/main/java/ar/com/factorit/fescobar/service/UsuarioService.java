package ar.com.factorit.fescobar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.com.factorit.fescobar.model.Usuario;
import ar.com.factorit.fescobar.repository.UsuarioRepository;

@Service
public class UsuarioService{

	@Autowired
	private UsuarioRepository usuarioRepository;

	@Transactional
	public List<Usuario> getUsuarios() {
		return usuarioRepository.findAll();
	}

	@Transactional
	public Usuario getById(int id) {
		return usuarioRepository.findOne(id);
	}

	@Transactional
	public boolean save(Usuario usuario) {
		return usuarioRepository.save(usuario) != null;
	}

	@Transactional
	public boolean update(Usuario usuario) {
		return usuarioRepository.save(usuario) != null;
	}

	@Transactional
	public void delete(int id) {
		usuarioRepository.delete(id);
	}
}
