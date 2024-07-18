package com.quanlyphichungcu.doAn.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ResponseBody;


import com.quanlyphichungcu.doAn.repository.dichVuRepository;

@Controller
public class dichVuController {
	@Autowired
	private dichVuRepository repository;
	
	@GetMapping("/testdichvu")
	@ResponseBody
	public List<com.quanlyphichungcu.doAn.entity.dich_vu> dich_vu() {
		return repository.findAll();
	}
	
}
