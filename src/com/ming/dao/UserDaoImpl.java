package com.ming.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ming.entity.User;

public class UserDaoImpl implements UserDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public User getUser(int id) {

		String hql = "from User u where u.userId=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0, id);

		return (User)query.uniqueResult();
	}
	
	@Override
	public User getUserByName(String name) {

		String hql = "from User u where u.userName=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, name);

		return (User)query.uniqueResult();
	}

	@Override
	public List<User> getAllUser() {

		String hql = "from User";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return query.list();
	}

	@Override
	public void addUser(User user) {
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public boolean delUser(String id) {

		String hql = "delete User u where u.userId = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);

		return (query.executeUpdate() > 0);
	}

	@Override
	public void updateUser(User user) {
		//hql���ķ�ʽ��̫�鷳��������save������
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	/*	String hql = "update User u set u.userName = ?,u.age=? where u.id = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, user.getUserName());
		query.setString(1, user.getAge());
		query.setInteger(2, user.getId());

		return (query.executeUpdate() > 0);*/
		
		
		/*
		//��ȡ�����ļ�
        Configuration cfg=new Configuration().configure(); 

        //����sessionFactory,�൱�����ݿ��һ������
        @SuppressWarnings("deprecation")
		SessionFactory factory=cfg.buildSessionFactory();

        //ȡ��session
        Session session=null;
        try {
            session=factory.openSession(); //��session
            //������������Ĭ�ϵ��ύ��ʽΪ�ֶ��ύ
            session.beginTransaction();
            
            session.save(user);
            //�ύ����
            session.getTransaction().commit(); //��õ�ǰ����Ȼ���ύ


        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            return false;
        }finally{
            if (session != null) {
                if (session.isOpen()) {
                    //�ر�session
                    session.close();
                }
            }
        }
		return true;
		
		*/
	}

}
