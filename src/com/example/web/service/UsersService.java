package com.example.web.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.example.web.dao.User;
import com.example.web.dao.UsersDao;

@Service("usersService")
public class UsersService {
	public UsersDao usersDao;

	@Autowired
	public void setUserDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	public void create(User user) {
		// TODO Auto-generated method stub
		System.out.println("UserService Class:"+user);
		usersDao.create(user);

	}
	public boolean exists(String username) {
		// TODO Auto-generated method stub
		return usersDao.exists(username);
	}
	@Secured("ROLE_ADMIN")
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return usersDao.getAllUsers();
	}

	

}
