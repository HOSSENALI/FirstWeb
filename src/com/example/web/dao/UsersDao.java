 package com.example.web.dao;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component("usersDao")
public class UsersDao {

	private NamedParameterJdbcTemplate jdbc;
	@Autowired 
	private PasswordEncoder passwordEncoder;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

//----------------------------INSERT-----------------------------------------------------------
	@Transactional
	public boolean create(User user) {

		//If you want to insert data directly then use below line
		//BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(user);
		MapSqlParameterSource params=new MapSqlParameterSource();
		//System.out.println("userDao class:" + user);
		
		params.addValue("username", user.getUsername());
		params.addValue("password", passwordEncoder.encode(user.getPassword()));
		params.addValue("email", user.getEmail());
		params.addValue("enabled", user.isEnabled());
		params.addValue("authority", user.getAuthority());
		

			jdbc.update("insert into users(username,password,email,enabled) values (:username, :password, :email, :enabled)",
					params);

			return jdbc.update("insert into authorities(username,authority) values (:username, :authority)",
					params) == 1;
		
		
	}

	public boolean exists(String username) {
		return jdbc.queryForObject("select count(*) from users where username=:username", 
				new MapSqlParameterSource("username",username), Integer.class) >0;
		
	}

	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return jdbc.query("select * from users,authorities where users.username=authorities.username",
				BeanPropertyRowMapper.newInstance(User.class));
	}
 
}