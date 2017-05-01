package com.management.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.management.dao.UserDao;
import com.management.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked")
	public User findByUserName(String username) {
		List<User> users = new ArrayList<>();
		users = sessionFactory.getCurrentSession().createQuery("from User where username = ?")
				.setParameter(0, username).list();
		if(users.isEmpty()) {
			return null;
		} else {
			return users.get(0);
		}
	}

}
