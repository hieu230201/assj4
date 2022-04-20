package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entitys.Share;
import util.JpaUtil;

public class ShareDao {
	public static final	EntityManager manager = JpaUtil.getEntityManager();
	

	public Share createShare(Share share) {
		try {
			manager.getTransaction().begin();
			manager.persist(share);
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		}
		Share share2 = share;
		return share2;
		
	}
	
	public List<Object[]> countUserLike(int id) {
		List<Object[]> list = null;
		try {
			manager.getTransaction().begin();
			String sql = "SELECT u.fullname, u.email, f.email, f.shareDate FROM Videos o"
					+ " join Share f on f.video.id = o.id "
					+ "JOIN Users u on f.user.id = u.id "
					+ "WHERE  f.shareDate IS NOT NULL and o.id = :id";
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
