package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.repository.dangNhapRepository;

@Controller
public class dangNhapController {
	@Autowired
	private dangNhapRepository repository;
	
	@GetMapping("/Test-Login")
	@ResponseBody
	public List<com.quanlyphichungcu.doAn.entity.dang_nhap> dang_nhap() {
		return repository.findAll();
	}
}
