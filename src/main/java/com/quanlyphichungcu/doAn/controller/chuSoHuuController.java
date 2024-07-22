package com.quanlyphichungcu.doAn.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;



@Controller
public class chuSoHuuController {
	@Autowired chuSoHuuRepository repository;
	
	@GetMapping("/thongtincanho")
	public String getMethodName(Model model) {
		model.addAttribute("chusohuu", repository.findAll());
		return "layout";
	}

}
