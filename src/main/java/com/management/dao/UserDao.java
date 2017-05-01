package com.management.dao;

import com.management.model.User;

public interface UserDao {
	User findByUserName(String username);
}
