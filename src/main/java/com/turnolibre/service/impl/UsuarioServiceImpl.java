package com.turnolibre.service.impl;

import com.turnolibre.business.excepcion.ExcepcionDeReglaDelNegocio;
import com.turnolibre.business.i18n.MensajeLocalizable;
import com.turnolibre.business.usuario.Cliente;
import com.turnolibre.business.usuario.Notificacion;
import com.turnolibre.business.usuario.Rol;
import com.turnolibre.business.usuario.Usuario;
import com.turnolibre.persistence.dao.impl.SharedDao;
import com.turnolibre.persistence.dao.impl.UsuarioDao;
import com.turnolibre.security.UsuarioDeSesion;
import com.turnolibre.service.UsuarioService;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.SortedSet;

@Service
@Transactional
public class UsuarioServiceImpl implements UsuarioService, UserDetailsService {

	@Autowired
	private SharedDao sharedDao;
	@Autowired
	private UsuarioDao usuarioDao;
	@Autowired
	private PasswordEncoder passwordEncoder;


	/*------------------------------------ Public methods ----------------------------------*/

	/**
	 * Metodo llamado por spring security cuando se loguea un usuario.
	 *
	 * @param username el nombre de usuario
	 * @return retorna los detalles del usuario
	 * @throws UsernameNotFoundException
	 */
	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Usuario usuario = usuarioDao.findByUsername(username);

		if (usuario == null)
			throw new UsernameNotFoundException("user.login.not.found");

		return new UsuarioDeSesion(usuario.getEmail(), usuario.getPassword(), this.collectAuthorities(usuario.getRoles()), usuario.getId(), usuario.getNombre());
	}

	@Override
	@Transactional(readOnly = true)
	public SortedSet<Notificacion> findNotificaciones(Long usuarioId) {

		Usuario usuario = sharedDao.load(Usuario.class, usuarioId);
		return usuario.getNotificaciones();
	}

	@Override
	@Transactional
	public void updateLastLogin(Long usuarioId) {

		Usuario usuario = sharedDao.load(Usuario.class, usuarioId);
		usuario.setUltimoLogueo(DateTime.now());
	}

	@Override
	@Transactional
	public void registrarUsuario(Usuario usuario) throws ExcepcionDeReglaDelNegocio {

		if (usuarioDao.emailExists(usuario.getEmail()))
			throw new ExcepcionDeReglaDelNegocio(new MensajeLocalizable("excepcion.crear.usuario.email.repetido", usuario.getEmail()));

		usuario.agregarRol(new Cliente());
		usuario.setPassword(passwordEncoder.encode(usuario.getPassword()));
		sharedDao.saveOrUpdate(usuario);
	}

	@Override
	@Transactional
	public void changePassword(Long usuarioId, String currentPassword, String newPassword) throws ExcepcionDeReglaDelNegocio {

		Usuario usuario = sharedDao.load(Usuario.class, usuarioId);

		if (!passwordEncoder.matches(currentPassword, usuario.getPassword()))
			throw new ExcepcionDeReglaDelNegocio(new MensajeLocalizable("excepcion.cambiar.contraseña.contraseña.actual.invalida"));

		usuario.setPassword(passwordEncoder.encode(newPassword));
	}

	/*--------------------------------------------------------------------------------------*/
    /*----------------------------------- Private methods ----------------------------------*/

	private Collection<SimpleGrantedAuthority> collectAuthorities(Collection<Rol> roles) {

		List<SimpleGrantedAuthority> authorities = new ArrayList<>();

		for (Rol rol : roles)
			authorities.add(new SimpleGrantedAuthority(rol.getNombreDeRol()));

		return authorities;
	}

	/*--------------------------------------------------------------------------------------*/

}
