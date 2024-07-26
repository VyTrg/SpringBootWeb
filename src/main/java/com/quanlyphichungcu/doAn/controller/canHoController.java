package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.entity.can_ho;


@Controller
public class canHoController {
	@Autowired
	private canHoRepository canho_repository;
	
//	@Autowired
//	private dichVuCanHoRepository dvch_repository;
	
	
//	@RequestMapping("/canho/{id}")
//	public String getCTCanHo(Model model, @PathVariable("id") String id) {
//		
//		Optional<can_ho> ch = canho_repository.findById(id);
//		model.addAttribute("ch", ch.get());
//		
//		List<dich_vu_can_ho> dv = dvch_repository.findById(dich_vu_can_ho_prikey);
//		model.addAttribute("dv", dv.get());
//		
//		return "admin/ctcanho";
//	}

	private canHoRepository repository;
	
	@GetMapping("/testcanho")
	@ResponseBody
	public List<can_ho> can_ho() {
		return repository.findAll();
	}

}