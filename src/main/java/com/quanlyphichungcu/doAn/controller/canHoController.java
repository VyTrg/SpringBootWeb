package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;


@Controller
public class canHoController {
	@Autowired
	private canHoRepository canho_repository;
	
	@Autowired
	private dichVuCanHoRepository dvch_repository;
	
	@Autowired dichVuRepository dv_repository;
	
	
	@RequestMapping("/canho/{id}")
	public String getCTCanHo(Model model, @PathVariable("id") String id) {
		
		Optional<can_ho> ch = canho_repository.findById(id);
		model.addAttribute("ch", ch.get());
		List<dich_vu_can_ho> dv = dvch_repository.getDichVuByCanHo(id);
		model.addAttribute("dv",dv);
		List<dich_vu> tatcadichvu = dv_repository.findAll();
		model.addAttribute("tatcadichvu",tatcadichvu);

		return "admin/ctcanho";
	}
	

}