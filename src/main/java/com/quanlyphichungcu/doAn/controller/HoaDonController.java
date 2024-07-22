package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.HoaDon;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;

@Controller
public class HoaDonController {
	@Autowired HoaDonRepository repository;
	
	@GetMapping("/HoaDon")
	@ResponseBody
	public List<HoaDon> hoadon() {
		return repository.findAll();
	}
}