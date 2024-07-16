package com.quanlyphichungcu.doAn.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



import com.quanlyphichungcu.doAn.repository.quyenRepository;

@Controller
public class quyenController {
	@Autowired
	private quyenRepository repository;
	
	@GetMapping("TestQuyen")
	public String in() {
		return "test";
	}
	@GetMapping("/Test-Quyen")
	public List<com.quanlyphichungcu.doAn.entity.quyen> quyen() {
		return repository.findAll();
	}
	
	
}
