package com.example.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.web.dao.Notice;

import com.example.web.service.NoticesService;

@Controller
public class NoticesController {

	private NoticesService noticesService;

	@Autowired
	public void setNoticesService(NoticesService noticesService) {
		this.noticesService = noticesService;
	}
	
	
//	public String handleDatabaseException(DataAccessException ex) {
//		return "error";
//	}

	
	
	@RequestMapping("/notices")
	public String showNotices(Model model) {
		
		noticesService.throwException();
		List<Notice> notices = noticesService.getCurrent();
		model.addAttribute("notices", notices);

		return "notices";
	}

	@RequestMapping("/createNotice") 
	public String createNotice(Model model) {
		model.addAttribute(new Notice());
		return "createNotice";
	}

	@RequestMapping(value="/docreate",method=RequestMethod.POST)
	public String docreate( Model model,@Valid Notice notice,BindingResult result) {
	
		System.out.println(notice);
		
		if(result.hasErrors() ) {
			
			return "createNotice";
		}
		
		noticesService.create(notice);
		return "noticeCreated";
		

		
	}
} 
