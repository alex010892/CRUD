package pildoras.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pildoras.es.controlador.entity.Cliente;

@Repository
public class ClienteDAOclase implements ClienteDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public List<Cliente> getClientes() {
		// TODO Auto-generated method stub

		//obtener la session
		
		Session miSession = sessionFactory.getCurrentSession();
		
		//crear la consulta (Query)
		
		Query<Cliente> miQuery = miSession.createQuery("from Cliente", Cliente.class);
		
		//ejecutar la query y devolver resultados
		
		List<Cliente> clientes = miQuery.getResultList();
		
		return clientes;
	}

	@Transactional
	public void insertarCliente(Cliente elCliente) {
		// TODO Auto-generated method stub
		
		//obtener la session
		
		Session miSession = sessionFactory.getCurrentSession();
			
		//insertar por fin el cliente
			
		//miSession.save(elCliente);
		
		miSession.saveOrUpdate(elCliente);
				
	}

	@Transactional
	public Cliente getCliente(int id) {
		// TODO Auto-generated method stub
		
		//obtener la sesión
		
		Session miSession = sessionFactory.getCurrentSession();
		
		//obtener la información del cliente seleccionado
		
		Cliente elCliente = miSession.get(Cliente.class, id);
		
		return elCliente;
	}

	@Transactional
	public void eliminarCliente(int id) {
		// TODO Auto-generated method stub

		//obtener la sesión
		
		Session miSession = sessionFactory.getCurrentSession();
		
		//borrar el cliente de la BBDD uililizando como criterio su id correspondiente
		
		Query consulta = miSession.createQuery("delete from Cliente where id=:IdDelCliente");
		
		consulta.setParameter("IdDelCliente", id);
		
		consulta.executeUpdate();
		
	}

}
