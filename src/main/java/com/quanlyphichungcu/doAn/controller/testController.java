package com.quanlyphichungcu.doAn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.quanlyphichungcu.doAn.repository.canHoRepository;

@Controller
public class testController {
	@Autowired canHoRepository repository;
	
	@RequestMapping("/test")
	public String test(Model model) {
		model.addAttribute("canho", repository.findById("CH2"));
		return "layout";
	}
}
