package dao;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entitys.Favorites;
import entitys.Favorites;
import entitys.Users;
import entitys.Videos;
import util.JpaUtil;

public class FavoriteDao {
	public static final	EntityManager manager = JpaUtil.getEntityManager();
	
	public Favorites findOne(String emailUser, String href) {
		Favorites f = null;
		try {
			manager.getTransaction().begin();
			String sql = "SELECT o FROM Favorites o JOIN Users u ON u.id = o.user.id JOIN Videos v ON v.id = o.video.id WHERE u.email =:userEmail and v.href =:videoHref";
			TypedQuery<Favorites> query = manager.createQuery(sql, Favorites.class);
			query.setParameter("userEmail", emailUser);
			query.setParameter("videoHref", href);
		    f = query.getSingleResult();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	public Favorites create(Users user, Videos video) {
		Favorites f = new Favorites();
		f.setVideo(video);
		f.setUser(user);
		f.setViewDate(new Timestamp(System.currentTimeMillis()));
		f.setLikeDate(null);
		try {
			manager.getTransaction().begin();
			manager.persist(f);
			manager.getTransaction().commit();
			
		}catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		return f;
	}
	
	public Favorites update(Favorites favorite) {
		
		try {
			manager.getTransaction().begin();
			manager.merge(favorite);
			manager.getTransaction().commit();
		}catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		return favorite;
	}
	
	public boolean updateLikeOrUnlike(Users user, String videoHref) {
		Favorites favorite = findOne(user.getEmail(), videoHref);

		if(favorite.getLikeDate() == null) {
			favorite.setLikeDate(new Timestamp(System.currentTimeMillis()));
		}else {
			favorite.setLikeDate(null);
		}
		Favorites updateHistory = update(favorite);

		return updateHistory != null ? true : false;
	}
	
	public List<Object[]> countLike() {
		List<Object[]> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "SELECT o.title, COUNT(u.id) FROM Videos o"
					+ " join Favorites f on f.video.id = o.id "
					+ "JOIN Users u on f.user.id = u.id "
					+ "WHERE  f.likeDate IS NOT NULL GROUP BY o.id";
			TypedQuery<Object[]> query = manager.createQuery(sql, Object[].class);
		    list = query.getResultList();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		return list;	
	}
	
	public List<Object[]> countUserLike(int id) {
		List<Object[]> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "SELECT u.fullname, u.email, f.likeDate FROM Videos o"
					+ " join Favorites f on f.video.id = o.id "
					+ "JOIN Users u on f.user.id = u.id "
					+ "WHERE  f.likeDate IS NOT NULL and o.id = :id";
			TypedQuery<Object[]> query = manager.createQuery(sql, Object[].class);
			query.setParameter("id", id);
		    list = query.getResultList();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		return list;	
	}
}
