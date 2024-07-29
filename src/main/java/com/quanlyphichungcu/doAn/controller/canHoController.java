package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.repository.canHoRepository;


@Controller
public class canHoController {
	@Autowired
	private canHoRepository canho_repository;
	
//	@Autowired
//	private dichVuCanHoRepository dvch_repository;
	
	@GetMapping("/testcanho")
	@ResponseBody
	public List<can_ho> can_ho() {
		return canho_repository.findAll();
	}
	
//	@RequestMapping("/canho")
//	public String listCanHo(Model model) {
//		List<can_ho> list = canho_repository.findAll();
//		model.addAttribute("list", list);
//		return "admin/canho";
//	}
	
//	@RequestMapping("/canho/{id}")
//	public String getCTCanHo(Model model, @PathVariable("id") String id) {
//		
//		Optional<can_ho> ch = canho_repository.findById(id);
//		model.addAttribute("ch", ch.get());
//		
//		return "admin/ctcanho";
//	}
//	private canHoRepository repository;
//	
//	@GetMapping("/testcanho")
//	@ResponseBody
//	public List<can_ho> can_ho() {
//		return repository.findAll();
//	}
}