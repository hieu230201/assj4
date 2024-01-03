package dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entitys.Users;

import util.JpaUtil;

public class UserDao extends Thread{
	public static final	EntityManager manager = JpaUtil.getEntityManager();
	
	@SuppressWarnings("deprecation")
	@Override
	protected void finalize() throws Throwable {
		manager.close();
		super.finalize();
	}
	
	public Users createUser(Users u) {
			try {
				manager.getTransaction().begin();
				manager.persist(u);
				manager.getTransaction().commit();
			} catch (Exception e) {
				manager.getTransaction().rollback();
				e.printStackTrace();
			}
			return u;
	}
	
	public Users updateUser(Users u) {
			try {
				manager.getTransaction().begin();
				manager.merge(u);
				manager.getTransaction().commit();
			} catch (Exception e) {
				manager.getTransaction().rollback();
				e.printStackTrace();
			}
			
			return u;
			
	}
		
	public void deleteUser(Users u) {
		try {
			manager.getTransaction().begin();
			manager.remove(u);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
	}
	
	public Users findByEmail(String email) {
		Users u = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Users o where o.email=:email";
			TypedQuery<Users> query = manager.createQuery(sql, Users.class);
			query.setParameter("email", email);
			u = query.getSingleResult();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
		
		return u;
	}
	
	
	public List<Users> findAll(){
		List<Users> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Users o where  o.isActive = 1";
			TypedQuery<Users> query = manager.createQuery(sql, Users.class);
			list = query.getResultList();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<Users> findAll(int page, int size) {

		List<Users> list = new ArrayList<>();
		try {
			manager.getTransaction().begin();
			String sql = "select o from Users o where  o.isActive = 1";
			TypedQuery<Users> query = manager.createQuery(sql, Users.class);
			 query.setFirstResult(page*size);
	         query.setMaxResults(size);
	         list = query.getResultList();
	         manager.getTransaction().commit();
	         
		}catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	public Users findOne(String email, String password) {
		Users u = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Users o where o.email =:username and o.password=:pass and o.isActive = 1";
			TypedQuery<Users> query = manager.createQuery(sql, Users.class);
			query.setParameter("username", email);
			query.setParameter("pass", password);
		    u = query.getSingleResult();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
		return u;
	}
	
	
	 public Users findByID(String id){
	        Users u = null;
	        try {
	        	manager.getTransaction().begin();
	            u = manager.find(Users.class,Integer.parseInt(id));
	            manager.getTransaction().commit();
	        }catch (Exception e){
	        	manager.getTransaction().rollback();
	            e.printStackTrace();
	        }
	       
	        return u;
	}
	
	

	
	
	
	
	
	

}
