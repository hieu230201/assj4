package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entitys.Videos;
import util.JpaUtil;

public class VideoDao {
	public static final	EntityManager manager = JpaUtil.getEntityManager();
	
	public Videos createVideo(Videos video) {
		try {
			manager.getTransaction().begin();
			manager.persist(video);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		return video;
		
	}
	
	public Videos updateVideo(Videos video) {
		try {
			manager.getTransaction().begin();
			manager.merge(video);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		return video;
	
	}
	
	public void deleteVideo(Videos video) {
		try {
			manager.getTransaction().begin();
			manager.remove(video);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
	}
	
	
	public List<Videos> findAll(){
		List<Videos> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Videos o where o.active = 1";
			TypedQuery<Videos> query = manager.createQuery(sql, Videos.class);
			list = query.getResultList();
			manager.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			manager.getTransaction().rollback();
		}
		return list;
	}
	
	
	public List<Videos> findAll(int page, int size){
		List<Videos> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Videos o where o.active = 1";
			TypedQuery<Videos> query = manager.createQuery(sql, Videos.class);
			query.setFirstResult(page*size);
			query.setMaxResults(size);
			list = query.getResultList();
			manager.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			manager.getTransaction().rollback();
		}
		
		return list;
	}
	
	public List<Videos> findAll(String find){
		List<Videos> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Videos o where o.title like '%"+find+"%'";
			TypedQuery<Videos> query = manager.createQuery(sql, Videos.class);
			list = query.getResultList();
			manager.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			manager.getTransaction().rollback();
		}
		
		return list;
	}
	
	
	public Videos findOne(String href) {
		Videos video = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Videos o where o.href =:hreff and o.active = 1";
			TypedQuery<Videos> query = manager.createQuery(sql, Videos.class);
			query.setParameter("hreff", href);
		    video = query.getSingleResult();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
		return video;
	}
	
	
	public List<Videos> findFavorites(int id){
		List<Videos> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Videos o JOIN Favorites f on o.id = f.video.id JOIN Users u on u.id = f.user.id  WHERE u.id = :idUser and f.likeDate IS NOT null ";
			TypedQuery<Videos> query = manager.createQuery(sql, Videos.class);
			query.setParameter("idUser", id);
			list = query.getResultList();
			manager.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			manager.getTransaction().rollback();
		}
		
		return list;
	}
	
	public List<Videos> findHistory(int id){
		List<Videos> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "select o from Videos o JOIN Favorites f on o.id = f.video.id JOIN Users u on u.id = f.user.id  WHERE u.id = :idUser and o.active = 1";
			TypedQuery<Videos> query = manager.createQuery(sql, Videos.class);
			query.setParameter("idUser", id);
			list = query.getResultList();
			manager.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			manager.getTransaction().rollback();
		}
		
		return list;
	}
	
	 public Videos findByID(String id){
	        Videos u = null;
	        try {
	        	manager.getTransaction().begin();
	            u = manager.find(Videos.class,Integer.parseInt(id));
	            manager.getTransaction().commit();
	        }catch (Exception e){
	        	manager.getTransaction().rollback();
	            e.printStackTrace();
	        }
	       
	        return u;
	    }
	
}
