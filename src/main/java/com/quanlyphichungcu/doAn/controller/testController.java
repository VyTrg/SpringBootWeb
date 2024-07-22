package com.quanlyphichungcu.doAn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.quanlyphichungcu.doAn.repository.canHoRepository;

@Controller
@RequestMapping("test")
public class testController {
	
	@RequestMapping()
	public String test() {
		return "test";
	}
}
