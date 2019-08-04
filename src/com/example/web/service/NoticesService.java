 package com.example.web.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.example.web.dao.Notice;
import com.example.web.dao.NoticesDAO;

@Service("noticesService")
public class NoticesService {
	public NoticesDAO noticesDAO;

	@Autowired
	public void setNoticesDAO(NoticesDAO noticesDAO) {
		this.noticesDAO = noticesDAO;
	}

	public List<Notice> getCurrent() {
		
		return noticesDAO.getNotices();
	}
@Secured({"ROLE_USER","ROLE_ADMIN"})
	public void create( Notice notice) {
		// TODO Auto-generated method stub
		noticesDAO.create(notice);
		
	}

	public void throwException() {
		// TODO Auto-generated method stub
		//noticesDAO.getNotices(2345);
	}
}
