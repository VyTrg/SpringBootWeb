package com.quanlyphichungcu.doAn.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.entity.can_ho;


@Controller
public class canHoController {
	@Autowired
	private canHoRepository repository;
	
	@GetMapping("/testcanho")
	@ResponseBody
	public List<can_ho> can_ho() {
		return repository.findAll();
	}
}