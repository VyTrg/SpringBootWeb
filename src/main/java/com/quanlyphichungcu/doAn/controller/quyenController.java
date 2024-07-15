package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.quanlyphichungcu.doAn.repository.quyenRepository;

@Controller
public class quyenController {
	@Autowired
	private quyenRepository repository;
	
	@RequestMapping("/Test-Quyen")
	@ResponseBody
	public List<com.quanlyphichungcu.doAn.entity.quyen> quyen() {
		return repository.findAll();
	}
}
