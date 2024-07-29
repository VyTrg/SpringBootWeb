package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;

@Controller
@RequestMapping("/dichvu")
public class dichVuController {
	@Autowired
	private dichVuRepository DichVuRepository;
	
	@GetMapping("/testdichvu")
	@ResponseBody
	public List<dich_vu> dich_vu() {
		return DichVuRepository.findAll();
	}
	
	@RequestMapping("")
	public String listDichVu(Model model) {
		List<dich_vu> dv = DichVuRepository.findAll();
		model.addAttribute("dv", dv);
		return "admin/dichvu";
	}
	
}
