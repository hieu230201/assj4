package dao;

import entitys.Comments;
import util.JpaUtil;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class CommentDao {
    public static final EntityManager manager = JpaUtil.getEntityManager();

    public Comments createCMT(Comments comments){
        Comments a = new Comments();
        a.setUser_id(comments.getUser_id());
        a.setVideo_id(comments.getVideo_id());
        a.setBinhluan(comments.getBinhluan());
        a.setDateComment(comments.getDateComment());
        try {
            manager.getTransaction().begin();
            manager.persist(a);
            manager.getTransaction().commit();
            manager.clear();
            return a;
        }catch (Exception e){
            e.printStackTrace();
            manager.getTransaction().rollback();
            throw e;
        }

    }

    public List<Object[]> findAll( int id){
        List<Object[]> list = null;
        try {
            manager.getTransaction().begin();
           String sql = "SELECT u.fullname, o.binhluan, o.dateComment FROM Comments o join Users u on u.id = o.user_id \n" +
                   "JOIN Videos v on v.id = o.video_id \n" +
                   "WHERE u.isActive = 1 and v.id =:id";
            TypedQuery<Object[]> query = manager.createQuery(sql, Object[].class);
            query.setParameter("id", id);
            list = query.getResultList();
            manager.getTransaction().commit();
        }catch (Exception e){
            e.printStackTrace();
            manager.getTransaction().rollback();
        }
        return list;
    }

    public List<Object[]> findAllSortData( int id){
        List<Object[]> list = null;
        try {
            manager.getTransaction().begin();
            String sql = "SELECT u.fullname, o.binhluan, o.dateComment FROM Comments o join Users u on u.id = o.user_id \n" +
                    "JOIN Videos v on v.id = o.video_id \n" +
                    "WHERE u.isActive = 1 and v.id =:id order by o.dateComment desc ";
            TypedQuery<Object[]> query = manager.createQuery(sql, Object[].class);
            query.setParameter("id", id);
            list = query.getResultList();
            manager.getTransaction().commit();
        }catch (Exception e){
            e.printStackTrace();
            manager.getTransaction().rollback();
        }
        return list;
    }

}
