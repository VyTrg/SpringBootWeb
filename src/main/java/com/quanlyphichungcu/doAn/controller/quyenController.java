package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.quanlyphichungcu.doAn.repository.quyenRepository;

import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class quyenController {
	@Autowired
	private quyenRepository repository;
	
	@GetMapping("TestQuyen")
	public String in() {
		return "test";
	}
	@GetMapping("/Test-Quyen")
	@ResponseBody
	public List<com.quanlyphichungcu.doAn.entity.quyen> quyen() {
		return repository.findAll();
	}
	
	@GetMapping("quyen/{ma_quyen}")
	@ResponseBody
	public Optional<com.quanlyphichungcu.doAn.entity.quyen> getMethodName(@PathVariable(name = "ma_quyen") String ma_quyen) {
		return repository.findById(ma_quyen);
	}
}
